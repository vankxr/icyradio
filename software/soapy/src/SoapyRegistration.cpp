#include <string>
#include <vector>
#include <utility>
#include <filesystem>
#include "SoapyIcyRadio.hpp"
#include <SoapySDR/Registry.hpp>
#include "ioctl.hpp"

std::vector<std::pair<uint32_t, std::string>> getIcyRadioDevices()
{
    std::vector<std::pair<uint32_t, std::string>> result;

    std::string dev_root = "/dev";

    for(const auto &entry : std::filesystem::directory_iterator(dev_root))
    {
        std::string path = entry.path().string();
        uint32_t dev_id = 0;

        if(sscanf(path.c_str(), "/dev/icyradio%u", &dev_id) != 1)
            continue;

        if(path.compare("/dev/icyradio" + std::to_string(dev_id)) != 0)
            continue;

        result.push_back(std::make_pair(dev_id, path));
    }

    return result;
}

SoapySDR::KwargsList findIcyRadio(const SoapySDR::Kwargs &args)
{
    SoapySDR::KwargsList result;

    std::vector<std::pair<uint32_t, std::string>> devices = getIcyRadioDevices();

    for(const auto &d : devices)
    {
        uint32_t id = d.first;
        std::string path = d.second;

        SoapySDR::Kwargs info;

        info["path"] = path;
        info["device_id"] = std::to_string(id);

        if(args.count("path") != 0 && info["path"] != args.at("path"))
            continue;

        if(args.count("device_id") != 0 && info["device_id"] != args.at("device_id"))
            continue;

        int fd = open(path.c_str(), O_RDWR);

        if(fd < 0)
        {
            SoapySDR_logf(SOAPY_SDR_DEBUG, "Failed to open device %s: %s", path.c_str(), strerror(errno));

            continue;
        }

        uint64_t serial;

        if(ioctl(fd, ICYRADIO_IOCTL_SERIAL_QUERY, &serial) < 0)
        {
            SoapySDR_logf(SOAPY_SDR_DEBUG, "Failed to query serial number of device %s: %s", path.c_str(), strerror(errno));

            close(fd);

            continue;
        }

        close(fd);

        char _serial[16];
        snprintf(_serial, sizeof(_serial), "%015lX", serial);

        info["path"] = path;
        info["serial"] = _serial;
        info["label"] = "IcyRadio - " + info["serial"];

        if(args.count("serial") != 0 && info["serial"] != args.at("serial"))
            continue;

        result.push_back(info);
    }

    return result;
}
SoapySDR::Device *makeIcyRadio(const SoapySDR::Kwargs &args)
{
    // If path specified, use that and we're done
    if(args.count("path") != 0)
        return new SoapyIcyRadio(args);

    // For anything else, make a non-const copy of args
    SoapySDR::Kwargs _args = args;

    // If device_id specified, build a path from that and we're done
    if(args.count("device_id") != 0)
    {
        _args["path"] = "/dev/icyradio" + args.at("device_id");

        return new SoapyIcyRadio(_args);
    }

    // For now, the remaining identification method is serial, so we need to loop through all devices
    SoapySDR::KwargsList devices = findIcyRadio(args);

    // If no devices found, return nullptr
    if(devices.size() == 0)
    {
        SoapySDR_logf(SOAPY_SDR_DEBUG, "No IcyRadio devices found with given arguments");

        return nullptr;
    }
    else if(devices.size() > 1)
    {
        // We may end up here if the user did not specify path, device_id or serial
        // Or in the rare case that multiple devices have the same serial number

        SoapySDR_logf(SOAPY_SDR_DEBUG, "Multiple IcyRadio devices found with given arguments, defaulting to first device");
    }

    _args["path"] = devices.at(0).at("path");

    return new SoapyIcyRadio(_args);
}

static SoapySDR::Registry registerMyDevice("icyradio", &findIcyRadio, &makeIcyRadio, SOAPY_SDR_ABI_VERSION);