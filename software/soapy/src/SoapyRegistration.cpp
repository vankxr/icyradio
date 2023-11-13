#include <string>
#include <iostream>
#include <filesystem>
#include "SoapyIcyRadio.hpp"
#include <SoapySDR/Registry.hpp>

SoapySDR::KwargsList findIcyRadio(const SoapySDR::Kwargs &args)
{
    SoapySDR::KwargsList result;

    std::string dev_root = "/dev";

    for(const auto &entry : std::filesystem::directory_iterator(dev_root))
    {
        std::string path = entry.path().string();
        uint32_t devID = 0;

        if(sscanf(path.c_str(), "/dev/icyradio%u", &devID) != 1)
            continue;

        if(path.compare("/dev/icyradio" + std::to_string(devID)) != 0)
            continue;

        SoapySDR::Kwargs info;
        info["path"] = path;

        try
        {
            SoapyIcyRadio *dev = new SoapyIcyRadio(info);

            info = dev->getHardwareInfo();

            delete dev;
        }
        catch(const std::exception &e)
        {
            std::cout << "Failed to open device " << path << ": " << e.what() << std::endl;
            continue;
        }

        info["label"] = "IcyRadio - " + info["serial"];
        info["path"] = path;
        info["device_id"] = std::to_string(devID);

        if(args.count("serial") != 0 && info["serial"] != args.at("serial"))
            continue;

        if(args.count("path") != 0 && info["path"] != args.at("path"))
            continue;

        if(args.count("device_id") != 0 && info["device_id"] != args.at("device_id"))
            continue;

        result.push_back(info);
    }

    return result;
}

SoapySDR::Device *makeIcyRadio(const SoapySDR::Kwargs &args)
{
    return new SoapyIcyRadio(args);
}

static SoapySDR::Registry registerMyDevice("icyradio", &findIcyRadio, &makeIcyRadio, SOAPY_SDR_ABI_VERSION);