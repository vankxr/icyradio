#include "SoapyIcyRadio.hpp"
#include <SoapySDR/Modules.hpp>
#include <SoapySDR/Registry.hpp>
#include <unistd.h>
#include <getopt.h>
#include <iostream>

SoapySDR::KwargsList findIcyRadio(const SoapySDR::Kwargs &args);
SoapySDR::Device *makeIcyRadio(const SoapySDR::Kwargs &args);

bool loadSystemSoapyIcyRadio()
{
    try
    {
        for(const auto &mod : SoapySDR::listModules())
        {
            if(mod.find("/libIcyRadioSupport.so") == std::string::npos)
                continue;

            std::cout << "Loading system IcyRadio support module \"" << mod << "\"..." << std::endl;

            std::string e = SoapySDR::loadModule(mod);

            if(!e.empty())
            {
                std::cerr << "Error loading module: " << e << std::endl;

                return false;
            }

            std::cout << "Loaded version " << SoapySDR::getModuleVersion(mod) << std::endl;

            return true;
        }
    }
    catch (const std::exception& ex)
    {
        std::cerr << "Exception loading local IcyRadio support module: " << ex.what() << std::endl;

        return false;
    }

    return false;
}
bool loadLocalSoapyIcyRadio()
{
    try
    {
        char cwd[256] = {0};

        char* _ = getcwd(cwd, sizeof(cwd)); // Suppress unused warning
        (void)_;

        const std::string mod = std::string(cwd) + "/libIcyRadioSupport.so";

        if(access(mod.c_str(), F_OK) == -1)
            return false;

        std::cout << "Loading local IcyRadio support module \"" << mod << "\"..." << std::endl;

        std::string e = SoapySDR::loadModule(mod);

        if(!e.empty())
        {
            std::cerr << "Error loading module: " << e << std::endl;

            return false;
        }

        std::cout << "Loaded version " << SoapySDR::getModuleVersion(mod) << std::endl;

        return true;
    }
    catch (const std::exception& ex)
    {
        std::cerr << "Exception loading local IcyRadio support module: " << ex.what() << std::endl;

        return false;
    }

    return false;
}
bool loadSoapyIcyRadio()
{
    if(loadLocalSoapyIcyRadio())
        return true;

    if(loadSystemSoapyIcyRadio())
        return true;

    return false;
}

int main(int argc, char *argv[])
{
    // if(!loadSoapyIcyRadio())
    // {
    //     std::cerr << "Could not find a suitable IcyRadio support module." << std::endl;

    //     return EXIT_FAILURE;
    // }

    SoapySDR::Kwargs args;

    static struct option long_options[] =
    {
        {"serial", required_argument, nullptr, 'S'},
        {"flash-file", required_argument, nullptr, 'f'},
        {nullptr, no_argument, nullptr, '\0'}
    };

    int c;
    int option_index = 0;

    while((c = getopt_long(argc, argv, "S:f:", long_options, &option_index)) != -1)
    {
        switch(c)
        {
            case 'S':
                args["serial"] = optarg;
            break;
            default:
                return EXIT_FAILURE;
        }
    }

    std::cout << "Making IcyRadio device (" << SoapySDR::KwargsToString(args) << ")..." << std::endl;

    SoapyIcyRadio *sdr = nullptr;

    try
    {
        SoapySDR::Device *dev = makeIcyRadio(args);

        sdr = dynamic_cast<SoapyIcyRadio *>(dev);
    }
    catch(const std::exception &ex)
    {
        std::cerr << "Failed to make IcyRadio device: " << ex.what() << std::endl;

        return EXIT_FAILURE;
    }

    if(sdr == nullptr)
    {
        std::cerr << "Made device is not an IcyRadio device." << std::endl;

        return EXIT_FAILURE;
    }

    std::cout << "IcyRadio device " << std::to_string((uintptr_t)sdr) << " created." << std::endl;

    delete sdr;

    return EXIT_SUCCESS;
}