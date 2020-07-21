#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <math.h>
#include <time.h>
#include <signal.h>
#include <alsa/asoundlib.h>
#include "debug_macros.h"
#include "fir.h"

#define DEBUG_OUTPUT

#define SQUELCH_FFT_SIZE    4096
#define SQUELCH_LEVEL       -60     // -60 dBFS

volatile uint8_t ubStop = 0;
snd_pcm_t *pALSAPlaybackHandle = NULL;
snd_pcm_t *pALSAPRecordHandle = NULL;

void alsa_record_callback(snd_async_handler_t *pALSAAsyncHandle)
{
    snd_pcm_t *pALSAHandle = snd_async_handler_get_pcm(pALSAAsyncHandle);

    snd_pcm_sframes_t ulFramesAvailable = snd_pcm_avail_update(pALSAHandle);
}
void alsa_playback_callback(snd_async_handler_t *pALSAAsyncHandle)
{
    snd_pcm_t *pALSAHandle = snd_async_handler_get_pcm(pALSAAsyncHandle);

    snd_pcm_sframes_t ulFramesAvailable = snd_pcm_avail_update(pALSAHandle);
}

void signal_handler(int iSignal)
{
    DBGPRINTLN_CTX("Got signal %d, stop sampling...", iSignal);

    ubStop = 1;
}

int main(int argc, char **argv)
{
    int32_t lOptChar;

    while((lOptChar = getopt(argc, argv, "p")) != -1)
    {
        switch (lOptChar)
        {
            case 'p':
            break;
            case 's':
            break;
        }
    }

    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stderr, NULL, _IONBF, 0);

    DBGPRINTLN_CTX("Set SIGINT handler...");
    signal(SIGINT, signal_handler);

    DBGPRINTLN_CTX("Init ALSA...");

    char *pszInputCardName = NULL;
    char *pszOutputCardName = NULL;

    int lCardID = -1;
    int lError;

    while(1)
    {
        if((lError = snd_card_next(&lCardID)) < 0)
        {
            DBGPRINTLN_CTX("Error getting next card ID: %s", snd_strerror(lError));

            break;
        }

        if(lCardID < 0)
            break;

        char *pszCardName;

        if((lError = snd_card_get_name(lCardID, &pszCardName)) < 0)
        {
            DBGPRINTLN_CTX("Error getting card %i name: %s", lCardID, snd_strerror(lError));

            break;
        }

        if(!strcmp(pszCardName, "HDA Intel PCH"))
        {
            DBGPRINTLN_CTX("Found input sound card \"%s\"!", pszCardName);

            free(pszCardName);

            void **ppvCardHints;

            if((lError = snd_device_name_hint(lCardID, "pcm", &ppvCardHints)) < 0)
            {
                DBGPRINTLN_CTX("Error getting card %i hints: %s", lCardID, snd_strerror(lError));

                break;
            }

            for(uint32_t i = 0; ppvCardHints[i]; i++)
            {
                char *pszCardNameHint = snd_device_name_get_hint(ppvCardHints[i], "NAME");
                char *pszCardIOIDHint = snd_device_name_get_hint(ppvCardHints[i], "IOID");

                if(!strncmp(pszCardNameHint, "hw:", 3) && (!pszCardIOIDHint || !strcmp(pszCardIOIDHint, "Input")))
                {
                    DBGPRINTLN_CTX("  Found input sound card name \"%s\"!", pszCardNameHint);

                    pszInputCardName = strdup(pszCardNameHint);

                    break;
                }
            }

            snd_device_name_free_hint(ppvCardHints);
        }
        else if(!strcmp(pszCardName, "IcyRadio Digital Audio Bridge"))
        {
            DBGPRINTLN_CTX("Found output sound card \"%s\"!", pszCardName);

            free(pszCardName);

            void **ppvCardHints;

            if((lError = snd_device_name_hint(lCardID, "pcm", &ppvCardHints)) < 0)
            {
                DBGPRINTLN_CTX("Error getting card %i hints: %s", lCardID, snd_strerror(lError));

                break;
            }

            for(uint32_t i = 0; ppvCardHints[i]; i++)
            {
                char *pszCardNameHint = snd_device_name_get_hint(ppvCardHints[i], "NAME");
                char *pszCardIOIDHint = snd_device_name_get_hint(ppvCardHints[i], "IOID");

                if(!strncmp(pszCardNameHint, "hw:", 3) && (!pszCardIOIDHint || !strcmp(pszCardIOIDHint, "Output")))
                {
                    DBGPRINTLN_CTX("  Found output sound card name \"%s\"!", pszCardNameHint);

                    pszOutputCardName = strdup(pszCardNameHint);

                    break;
                }
            }

            snd_device_name_free_hint(ppvCardHints);
        }
        else
        {
            free(pszCardName);

            continue;
        }

        if(pszInputCardName && pszOutputCardName)
            break;
    }

    #ifdef DEBUG_OUTPUT
    pszOutputCardName = strdup("default");
    #endif

    if(!pszInputCardName)
        DBGPRINTLN_CTX("Input device not found!");
    if(!pszOutputCardName)
        DBGPRINTLN_CTX("Output device not found!");

    if(!pszInputCardName || !pszOutputCardName)
        return 1;

    snd_async_handler_t *pALSAAsyncHandle = NULL;
    snd_pcm_hw_params_t *pALSAHwParams = NULL;
    snd_pcm_sw_params_t *pALSASwParams = NULL;
    unsigned int ulSampleRate = 48000;
    snd_pcm_uframes_t ulBufferSize = 16384;
    snd_pcm_uframes_t ulPeriodSize = 4096;

    // Playback
    int i = snd_pcm_open(&pALSAPlaybackHandle, pszOutputCardName, SND_PCM_STREAM_PLAYBACK, SND_PCM_ASYNC);

    free(pszOutputCardName);
DBGPRINTLN_CTX("%s", snd_strerror(i));
    snd_pcm_hw_params_malloc(&pALSAHwParams);
    snd_pcm_hw_params_any(pALSAPlaybackHandle, pALSAHwParams);
    snd_pcm_hw_params_set_channels(pALSAPlaybackHandle, pALSAHwParams, 2);
    snd_pcm_hw_params_set_access(pALSAPlaybackHandle, pALSAHwParams, SND_PCM_ACCESS_RW_INTERLEAVED);
    snd_pcm_hw_params_set_format(pALSAPlaybackHandle, pALSAHwParams, SND_PCM_FORMAT_S16_LE);
    snd_pcm_hw_params_set_rate_resample(pALSAPlaybackHandle, pALSAHwParams, 0);
    snd_pcm_hw_params_set_rate_near(pALSAPlaybackHandle, pALSAHwParams, &ulSampleRate, NULL);
    snd_pcm_hw_params_set_buffer_size_near(pALSAPlaybackHandle, pALSAHwParams, &ulBufferSize);
    snd_pcm_hw_params_set_period_size_near(pALSAPlaybackHandle, pALSAHwParams, &ulPeriodSize, NULL);
    snd_pcm_hw_params(pALSAPlaybackHandle, pALSAHwParams);
    snd_pcm_hw_params_free(pALSAHwParams);

    snd_pcm_sw_params_malloc(&pALSASwParams);
    snd_pcm_sw_params_current(pALSAPlaybackHandle, pALSASwParams);
    snd_pcm_sw_params_set_start_threshold(pALSAPlaybackHandle, pALSASwParams, ulBufferSize - ulPeriodSize);
    snd_pcm_sw_params_set_avail_min(pALSAPlaybackHandle, pALSASwParams, ulPeriodSize);
    snd_pcm_sw_params(pALSAPlaybackHandle, pALSASwParams);
    snd_pcm_sw_params_free(pALSASwParams);

    snd_pcm_prepare(pALSAPlaybackHandle);

    snd_async_add_pcm_handler(&pALSAAsyncHandle, pALSAPlaybackHandle, alsa_playback_callback, NULL);

    // Record
    snd_pcm_open(&pALSAPRecordHandle, pszInputCardName, SND_PCM_STREAM_CAPTURE, SND_PCM_ASYNC);

    free(pszInputCardName);

    snd_pcm_hw_params_malloc(&pALSAHwParams);
    snd_pcm_hw_params_any(pALSAPRecordHandle, pALSAHwParams);
    snd_pcm_hw_params_set_channels(pALSAPRecordHandle, pALSAHwParams, 2);
    snd_pcm_hw_params_set_access(pALSAPRecordHandle, pALSAHwParams, SND_PCM_ACCESS_RW_INTERLEAVED);
    snd_pcm_hw_params_set_format(pALSAPRecordHandle, pALSAHwParams, SND_PCM_FORMAT_S16_LE);
    snd_pcm_hw_params_set_rate_resample(pALSAPRecordHandle, pALSAHwParams, 0);
    snd_pcm_hw_params_set_rate_near(pALSAPRecordHandle, pALSAHwParams, &ulSampleRate, NULL);
    snd_pcm_hw_params_set_buffer_size_near(pALSAPRecordHandle, pALSAHwParams, &ulBufferSize);
    snd_pcm_hw_params_set_period_size_near(pALSAPRecordHandle, pALSAHwParams, &ulPeriodSize, NULL);
    snd_pcm_hw_params(pALSAPlaybackHandle, pALSAHwParams);
    snd_pcm_hw_params_free(pALSAHwParams);

    snd_pcm_sw_params_malloc(&pALSASwParams);
    snd_pcm_sw_params_current(pALSAPRecordHandle, pALSASwParams);
    snd_pcm_sw_params_set_start_threshold(pALSAPRecordHandle, pALSASwParams, ulBufferSize - ulPeriodSize);
    snd_pcm_sw_params_set_avail_min(pALSAPRecordHandle, pALSASwParams, ulPeriodSize);
    snd_pcm_sw_params(pALSAPRecordHandle, pALSASwParams);
    snd_pcm_sw_params_free(pALSASwParams);

    snd_pcm_prepare(pALSAPRecordHandle);

    snd_async_add_pcm_handler(&pALSAAsyncHandle, pALSAPRecordHandle, alsa_record_callback, NULL);

    while(!ubStop)
        sleep(10);

    snd_pcm_drain(pALSAPlaybackHandle);
    snd_pcm_drop(pALSAPRecordHandle);

    DBGPRINTLN_CTX("Deinit ALSA...");
    snd_pcm_close(pALSAPlaybackHandle);
    snd_pcm_close(pALSAPRecordHandle);

    return 0;
}