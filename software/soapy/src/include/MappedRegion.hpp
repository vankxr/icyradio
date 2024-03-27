#pragma once

#include <cstdlib>
#include <cstdint>
#include <mutex>
#include <sys/mman.h>
#include <unistd.h>
#include <cerrno>
#include <cstring>

class MappedRegion
{
public:
    MappedRegion(int fd, uintptr_t start, size_t size);
    ~MappedRegion();

    void map();
    void unmap();

    void *getVirt();
    void *getVirt(const uintptr_t phys);
    uintptr_t getPhys();
    uintptr_t getPhys(const void *virt);

    size_t getSize();

    bool isMapped();

private:
    int fd;             // File descriptor of the memory device
    uintptr_t start;    // Start address of the region (Physical address)
    size_t size;        // Size of the requested region
    size_t map_size;    // Size of the mapped region
    void* map_ptr;      // Pointer to the start of the mapped region (Virtual address)
    void* ptr;          // Pointer to the start of the requested region (Virtual address)
    bool mapped;        // Whether the region is mapped

    std::mutex mutex;
};