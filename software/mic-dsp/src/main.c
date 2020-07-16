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

#define SQUELCH_FFT_SIZE    4096
#define SQUELCH_LEVEL       -60     // -60 dBFS

snd_pcm_t *pALSAPlaybackHandle = NULL;
snd_pcm_hw_params_t *pALSAHwParams = NULL;

void sample_handler()
{

}

void signal_handler(int iSignal)
{
    DBGPRINTLN_CTX("Got signal %d, stop sampling...", iSignal);
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

    DBGPRINTLN_CTX("Init ALSA input card...");

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

    DBGPRINTLN_CTX("in %s, out %s", pszInputCardName, pszOutputCardName);

    unsigned int ulSampleRate = 48000;
    int lSampleRateDirection = 1;

    snd_pcm_open(&pALSAPlaybackHandle, pszOutputCardName, SND_PCM_STREAM_PLAYBACK, SND_PCM_ASYNC);
    snd_pcm_hw_params_malloc(&pALSAHwParams);
    snd_pcm_hw_params_any(pALSAPlaybackHandle, pALSAHwParams);
    snd_pcm_hw_params_set_access(pALSAPlaybackHandle, pALSAHwParams, SND_PCM_ACCESS_RW_INTERLEAVED);
    snd_pcm_hw_params_set_format(pALSAPlaybackHandle, pALSAHwParams, SND_PCM_FORMAT_S16_LE);
    snd_pcm_hw_params_set_rate_near(pALSAPlaybackHandle, pALSAHwParams, &ulSampleRate, &lSampleRateDirection);
    snd_pcm_hw_params_set_channels(pALSAPlaybackHandle, pALSAHwParams, 2);
    snd_pcm_hw_params(pALSAPlaybackHandle, pALSAHwParams);
    snd_pcm_hw_params_free(pALSAHwParams);

    snd_pcm_prepare(pALSAPlaybackHandle);

    DBGPRINTLN_CTX("Deinit ALSA input card...");
    snd_pcm_close(pALSAPlaybackHandle);

    return 0;
}