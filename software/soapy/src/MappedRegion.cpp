#include "MappedRegion.hpp"

MappedRegion::MappedRegion(int fd, uintptr_t start, size_t size)
{
    this->fd = fd;
    this->start = start;
    this->size = size;
    this->map_size = 0;
    this->map_ptr = nullptr;
    this->ptr = nullptr;
    this->mapped = false;

    this->map();
}
MappedRegion::~MappedRegion()
{
    this->unmap();
}

void MappedRegion::map()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->mapped)
        return;

    if(this->fd < 0)
        throw std::runtime_error("Invalid file descriptor");

    if(!this->size)
        throw std::runtime_error("Cannot map a region of size 0");

    uintptr_t page_size = sysconf(_SC_PAGESIZE);

    uintptr_t map_start = this->start & ~(page_size - 1);
    uintptr_t map_offset = this->start & (page_size - 1);
    uintptr_t map_size = this->size + map_offset;

    void *map_ptr = mmap(nullptr, map_size, PROT_READ | PROT_WRITE, MAP_SHARED, this->fd, map_start);

    if(map_ptr == MAP_FAILED)
        throw std::runtime_error("Failed to map memory region (" + std::string(std::strerror(errno)) + ")");

    this->map_size = map_size;
    this->map_ptr = map_ptr;
    this->ptr = reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(map_ptr) + map_offset);
    this->mapped = true;
}
void MappedRegion::unmap()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(!this->mapped)
        return;

    if(this->map_ptr == nullptr)
        throw std::runtime_error("Invalid map pointer");

    if(this->map_size == 0)
        throw std::runtime_error("Invalid map size");

    if(munmap(this->map_ptr, this->map_size) < 0)
        throw std::runtime_error("Failed to unmap memory region (" + std::string(std::strerror(errno)) + ")");

    this->map_size = 0;
    this->map_ptr = nullptr;
    this->ptr = nullptr;
    this->mapped = false;
}
void *MappedRegion::get()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(!this->mapped)
        throw std::runtime_error("Region is not mapped");

    if(this->ptr == nullptr)
        throw std::runtime_error("Invalid pointer");

    return this->ptr;
}