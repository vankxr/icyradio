#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/delay.h>
#include "debug_macros.h"
#include "utils.h"
#include "si5351.h"

#define ICYRADIO_PCI_VENDOR_ID       0x10EE
#define ICYRADIO_PCI_DEVICE_ID       0x7021
#define ICYRADIO_PCI_SUBVENDOR_ID    0x10EE
#define ICYRADIO_PCI_SUBDEVICE_ID    0x0007

static const struct pci_device_id icyradio_pci_tbl[] = {
	{
        .vendor = ICYRADIO_PCI_VENDOR_ID,
        .device = ICYRADIO_PCI_DEVICE_ID,
        .subvendor = ICYRADIO_PCI_SUBVENDOR_ID,
        .subdevice = ICYRADIO_PCI_SUBDEVICE_ID,
        .class = 0,
        .class_mask = 0,
        .driver_data = 0,
    },
    {}
};

MODULE_LICENSE("GPL");
MODULE_AUTHOR("João Silva");
MODULE_DESCRIPTION("Icyradio SDR v2 Kernel driver.");
MODULE_VERSION("1.0.0");
MODULE_DEVICE_TABLE(pci, icyradio_pci_tbl);


void spi_init(void *pBase)
{
    // Reset
    iowrite32(0x0000000A, pBase + 0x40);

    iowrite32(BIT(7) | BIT(6) | BIT(5) | BIT(2) | BIT(1), pBase + 0x60);
}
void spi_select(void *pBase, uint8_t ubSelect)
{
    iowrite32(ubSelect ? 0 : BIT(0), pBase + 0x70);
}
uint8_t spi_xfer(void *pBase, uint8_t ubData)
{
    iowrite32(ioread32(pBase + 0x60) | BIT(6), pBase + 0x60); // Clear RX FIFO
    iowrite32(ubData, pBase + 0x68);

    while(ioread32(pBase + 0x64) & BIT(0)) // Wait for RX FIFO to be not empty
        msleep(0);

    return (uint8_t)ioread32(pBase + 0x6C);
}

void i2c_init(void *pBase)
{
    // Reset
    iowrite32(0x0000000A, pBase + 0x040);

    iowrite32(0x0000000F, pBase + 0x120);
    iowrite32((ioread32(pBase + 0x100) & ~(BIT(6) | BIT(0))) | BIT(1), pBase + 0x100);
    iowrite32((ioread32(pBase + 0x100) & ~(BIT(6) | BIT(1))) | BIT(0), pBase + 0x100);

    iowrite32(ioread32(pBase + 0x020), pBase + 0x020); // Clear IRQs
}
uint8_t i2c_transmit(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    uint32_t ulFlags;

    if(!ubCount)
        return 0;

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)ioread32(pBase + 0x104), (uint8_t)ioread32(pBase + 0x020));

    if((ioread32(pBase + 0x104) & BIT(2)) && !(ioread32(pBase + 0x020) & BIT(2))) // Bus busy and not owner
        return 0;

    // DBGPRINTLN_CTX("bus ok");

    if(!(ioread32(pBase + 0x104) & BIT(7))) // Clear TX FIFO
    {
        iowrite32(ioread32(pBase + 0x100) | BIT(1), pBase + 0x100);
        iowrite32(ioread32(pBase + 0x100) & ~BIT(1), pBase + 0x100);
    }

    // DBGPRINTLN_CTX("tx fifo cleared");

    while(!(ioread32(pBase + 0x104) & BIT(6))) // Clear RX FIFO
        (void)ioread32(pBase + 0x10C);

    // DBGPRINTLN_CTX("rx fifo cleared");
    // DBGPRINTLN_CTX("status %02X", (uint8_t)ioread32(pBase + 0x104));

    iowrite32(ioread32(pBase + 0x020), pBase + 0x020); // Clear IRQs
    // DBGPRINTLN_CTX("irq cleared, intr %02X", (uint8_t)ioread32(pBase + 0x020));

    iowrite32(BIT(8) | ubAddress, pBase + 0x108);
    // DBGPRINTLN_CTX("addr written");

    ulFlags = ioread32(pBase + 0x020);

    if(ubAddress & 1) // Read
    {
        iowrite32((ubStop ? BIT(9) : 0) | ubCount, pBase + 0x108);
    }
    else
    {
        while(ulFlags & BIT(4))
        {
            iowrite32(ulFlags & BIT(4), pBase + 0x020);
            ulFlags = ioread32(pBase + 0x020);

            msleep(0);
        }

        // DBGPRINTLN_CTX("not busy irq cleared, intr %02X", (uint8_t)ulFlags);
    }

    do
    {
        if(ubAddress & 1) // Read
        {
            // DBGPRINTLN_CTX("wait for rx data (%hhu), status %02X", ubCount, (uint8_t)ioread32(pBase + 0x104));

            while(ioread32(pBase + 0x104) & BIT(6))
            {
                ulFlags = ioread32(pBase + 0x020);

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Early read termination OR Arbitration lost

                msleep(0);
            }

            *pubSrc++ = (uint8_t)ioread32(pBase + 0x10C);
        }
        else // Write
        {
            // DBGPRINTLN_CTX("wait for tx empty or error");

            while(!(ioread32(pBase + 0x104) & BIT(7)))
            {
                ulFlags = ioread32(pBase + 0x020);

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Slave NACK OR Arbitration lost

                msleep(0);
            }

            iowrite32(ioread32(pBase + 0x020) & BIT(2), pBase + 0x020);

            // DBGPRINTLN_CTX("tx throttle irq cleared, intr %02X", (uint8_t)ioread32(pBase + 0x020));

            // DBGPRINTLN_CTX("write tx data (%hhu), stop %hhu", ubCount, ubStop);

            iowrite32(((ubCount == 1 && ubStop) ? BIT(9) : 0) | *pubSrc++, pBase + 0x108);
        }
    } while(--ubCount);

    if(ubAddress & 1) // Read
        iowrite32(ioread32(pBase + 0x020) & BIT(4), pBase + 0x020); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy

    while(1)
    {
        ulFlags = ioread32(pBase + 0x020);

        if(ulFlags & BIT(0))
            return 0; // Arbitration lost

        if(!(ubAddress & 1) && (ulFlags & BIT(1)))
            return 0; // Slave NACK

        if(ubStop && (ulFlags & BIT(4)))
            break; // Stop was requested and bus is free, we are done!

        if(!ubStop && !(ubAddress & 1) && (ulFlags & BIT(2)))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(!ubStop && (ubAddress & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        msleep(0);

        ulFlags = ioread32(pBase + 0x020);
    }

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)ioread32(pBase + 0x104), (uint8_t)ioread32(pBase + 0x020));

    return 1;
}
uint8_t i2c_write(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) & ~0x01, pubSrc, ubCount, ubStop);
}
uint8_t i2c_read(void *pBase, uint8_t ubAddress, uint8_t *pubDst, uint8_t ubCount, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) | 0x01, pubDst, ubCount, ubStop);
}
uint8_t i2c_write_byte(void *pBase, uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
uint8_t i2c_read_byte(void *pBase, uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!i2c_transmit(pBase, (ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}


void clk_conf(void)
{
    si5351_xtal_config(26000000, 10); // fPFD = XTAL, CLoad = 10 pF
    //si5351_clkin_config(50000000, 2); // fPFD = CLKIN / 2

    DBGPRINTLN_CTX("XTAL Clock: %llu Hz", SI5351_XTAL_FREQ);
    DBGPRINTLN_CTX("CLKIN Clock: %llu Hz", SI5351_CLKIN_FREQ);
    DBGPRINTLN_CTX("CLKIN Divider Clock: %llu Hz", SI5351_CLKIN_DIV_FREQ);

    //// PLLA
    si5351_pll_set_source(SI5351_PLLA, SI5351_PLL_SRC_XTAL);
    si5351_pll_set_freq(SI5351_PLLA, 650000000);

    DBGPRINTLN_CTX("PLLA Source Clock: %llu Hz", SI5351_PLL_SRC_FREQ[SI5351_PLLA]);
    DBGPRINTLN_CTX("PLLA VCO Clock: %llu Hz", SI5351_PLL_FREQ[SI5351_PLLA]);

    //// PLLB
    /*
    si5351_pll_set_source(SI5351_PLLB, SI5351_PLL_SRC_XTAL);
    si5351_pll_set_freq(SI5351_PLLB, 840000000);

    DBGPRINTLN_CTX("PLLB Source Clock: %llu Hz", SI5351_PLL_SRC_FREQ[SI5351_PLLB]);
    DBGPRINTLN_CTX("PLLB VCO Clock: %llu Hz", SI5351_PLL_FREQ[SI5351_PLLB]);
    */

    //// LNB #1 Reference frequency
    si5351_multisynth_set_source(2, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(2, 50000000);
    // si5351_multisynth_set_phase_offset(2, 0.f);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %llu Hz", 2, SI5351_MS_SRC_FREQ[2]);
    DBGPRINTLN_CTX("MS%hhu Clock: %llu Hz", 2, SI5351_MS_FREQ[2]);
    // DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_LNB1_REF, si5351_multisynth_get_phase_offset(SI5351_LNB1_REF));

    si5351_clock_set_disable_state(2, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(2, 8); // 8 mA
    si5351_clock_set_invert(2, 0); // Not inverted
    si5351_clock_set_source(2, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(2, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %llu Hz", 2, SI5351_CLK_FREQ[2]);

    si5351_clock_power_up(2); // Power the output stage up
    si5351_clock_enable(2); // Software enable the clock output
}

static int icyradio_pci_probe(struct pci_dev *pdev , const struct pci_device_id *pid)
{
    uint8_t buf[10];
    uint16_t cmd;
    void *pBAR0, *pBAR1;

    DBGPRINTLN_CTX("dev %p id %p drv_data %p", pdev, pid, pci_get_drvdata(pdev));

    if(pdev->vendor != ICYRADIO_PCI_VENDOR_ID || pdev->device != ICYRADIO_PCI_DEVICE_ID)
    {
        DBGPRINTLN_CTX("Not an IcyRadio device");

        return -EINVAL;
    }

    if(pci_enable_device(pdev))
    {
        DBGPRINTLN_CTX("Can't enable PCI device, aborting");

        return -EFAULT;
    }

    DBGPRINTLN_CTX("BARs:");

    for(int i = 0; i < 6; i++)
    {
        if(!pci_resource_len(pdev, i))
            continue;

        DBGPRINTLN_CTX("  BAR %d: start: 0x%08lX, end: 0x%08lX, flags: 0x%08lX", i, (unsigned long)pci_resource_start(pdev, i), (unsigned long)pci_resource_end(pdev, i), (unsigned long)pci_resource_flags(pdev, i));
    }

    if(pci_request_regions(pdev, "icyradio"))
    {
        DBGPRINTLN_CTX("Can't request PCI regions, aborting");

        return -EFAULT;
    }

    pci_set_master(pdev); // Set as bus master so it can access the bus

    pBAR0 = pci_iomap(pdev, 0, 0);

    if(!pBAR0)
    {
        DBGPRINTLN_CTX("Can't map BAR0, aborting");

        return -EFAULT;
    }

    DBGPRINTLN_CTX("BAR0 mapped at %p", pBAR0);

    DBGPRINTLN_CTX("AXI SPI #0 - SPICR: 0x%08X", ioread32(pBAR0 + 0x00008000 + 0x60));
    DBGPRINTLN_CTX("AXI SPI #0 - SPISR: 0x%08X", ioread32(pBAR0 + 0x00008000 + 0x64));
    DBGPRINTLN_CTX("AXI SPI #1 - SPICR: 0x%08X", ioread32(pBAR0 + 0x00014000 + 0x60));
    DBGPRINTLN_CTX("AXI SPI #1 - SPISR: 0x%08X", ioread32(pBAR0 + 0x00014000 + 0x64));
    DBGPRINTLN_CTX("AXI SPI #2 - SPICR: 0x%08X", ioread32(pBAR0 + 0x00018000 + 0x60));
    DBGPRINTLN_CTX("AXI SPI #2 - SPISR: 0x%08X", ioread32(pBAR0 + 0x00018000 + 0x64));
    DBGPRINTLN_CTX("AXI GPIO #0 - DATA: 0x%08X", ioread32(pBAR0 + 0x00004000 + 0x00));
    DBGPRINTLN_CTX("AXI GPIO #0 - TRI: 0x%08X", ioread32(pBAR0 + 0x00004000 + 0x04));
    DBGPRINTLN_CTX("AXI GPIO #1 - DATA: 0x%08X", ioread32(pBAR0 + 0x0001A000 + 0x00));
    DBGPRINTLN_CTX("AXI GPIO #1 - TRI: 0x%08X", ioread32(pBAR0 + 0x0001A000 + 0x04));
    DBGPRINTLN_CTX("AXI AD9361 Version: 0x%08X", ioread32(pBAR0 + 0x00100000 + 0x0000));
    DBGPRINTLN_CTX("AXI DMA RF RX Version: 0x%08X", ioread32(pBAR0 + 0x00000000 + 0x0000));
    DBGPRINTLN_CTX("AXI DMA RF TX Version: 0x%08X", ioread32(pBAR0 + 0x00002000 + 0x0000));
    DBGPRINTLN_CTX("AXI DMA I2S RX Version: 0x%08X", ioread32(pBAR0 + 0x0000C000 + 0x0000));
    DBGPRINTLN_CTX("AXI DMA I2S TX Version: 0x%08X", ioread32(pBAR0 + 0x0000E000 + 0x0000));

    DBGPRINTLN_CTX("BRAM First Word: 0x%08X", ioread32(pBAR0 + 0x01000000));
    DBGPRINTLN_CTX("BRAM Last Word: 0x%08X", ioread32(pBAR0 + 0x01001FFC));

    iowrite32(0xDEADBEEF, pBAR0 + 0x01000000);
    iowrite32(0xDEADCAFE, pBAR0 + 0x01001FFC);

    DBGPRINTLN_CTX("BRAM First Word: 0x%08X", ioread32(pBAR0 + 0x01000000));
    DBGPRINTLN_CTX("BRAM Last Word: 0x%08X", ioread32(pBAR0 + 0x01001FFC));

    // DBGPRINTLN_CTX("--- Flash SPI Test ---");

    // spi_init(pBAR0 + 0x00008000);

    // msleep(100);

    // spi_select(pBAR0 + 0x00008000, 1);

    // spi_xfer(pBAR0 + 0x00008000, 0x9F);
    // DBGPRINTLN_CTX("Flash Manufacturer: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));
    // DBGPRINTLN_CTX("Flash MemType: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));
    // DBGPRINTLN_CTX("Flash MemCap: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    // spi_select(pBAR0 + 0x00008000, 0);

    // msleep(100);

    // spi_select(pBAR0 + 0x00008000, 1);

    // spi_xfer(pBAR0 + 0x00008000, 0x05);
    // DBGPRINTLN_CTX("Flash Status 1: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    // spi_select(pBAR0 + 0x00008000, 0);

    // msleep(100);

    // spi_select(pBAR0 + 0x00008000, 1);

    // spi_xfer(pBAR0 + 0x00008000, 0x35);
    // DBGPRINTLN_CTX("Flash Status 2: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    // spi_select(pBAR0 + 0x00008000, 0);

    // msleep(100);
    // spi_select(pBAR0 + 0x00008000, 1);
    // spi_xfer(pBAR0 + 0x00008000, 0x06); // Write Enable
    // spi_select(pBAR0 + 0x00008000, 0);

    // msleep(100);
    // spi_select(pBAR0 + 0x00008000, 1);
    // spi_xfer(pBAR0 + 0x00008000, 0x01); // Write Status Register
    // spi_xfer(pBAR0 + 0x00008000, 0x00); // Status 1 - Disable Write Protections
    // spi_xfer(pBAR0 + 0x00008000, 0x02); // Status 2 - Enable QE operation
    // spi_select(pBAR0 + 0x00008000, 0);

    // msleep(100);

    // spi_select(pBAR0 + 0x00008000, 1);

    // spi_xfer(pBAR0 + 0x00008000, 0x05);
    // DBGPRINTLN_CTX("Flash Status 1: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    // spi_select(pBAR0 + 0x00008000, 0);

    // msleep(100);

    // spi_select(pBAR0 + 0x00008000, 1);

    // spi_xfer(pBAR0 + 0x00008000, 0x35);
    // DBGPRINTLN_CTX("Flash Status 2: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    // spi_select(pBAR0 + 0x00008000, 0);

    DBGPRINTLN_CTX("--- Synth SPI Test ---");

    spi_init(pBAR0 + 0x00018000);

    iowrite32(ioread32(pBAR0 + 0x0001A000 + 0x00) | BIT(0), pBAR0 + 0x0001A000 + 0x00); // Assert SYNTH_CE
    msleep(100);

    spi_select(pBAR0 + 0x00018000, 1);

    spi_xfer(pBAR0 + 0x00018000, 0x00);
    spi_xfer(pBAR0 + 0x00018000, 0x00);
    spi_xfer(pBAR0 + 0x00018000, BIT(5) | BIT(4) | BIT(3) | BIT(2));

    spi_select(pBAR0 + 0x00018000, 0);

    msleep(100);

    spi_select(pBAR0 + 0x00018000, 1);

    spi_xfer(pBAR0 + 0x00018000, BIT(7) | 0x00);
    spi_xfer(pBAR0 + 0x00018000, 0x03);
    DBGPRINTLN_CTX("Synth ChipType: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));
    DBGPRINTLN_CTX("Synth ChipID Low: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));
    DBGPRINTLN_CTX("Synth ChipID High: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));
    DBGPRINTLN_CTX("Synth ChipVersion: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));
    DBGPRINTLN_CTX("Synth ChipOption: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));

    spi_select(pBAR0 + 0x00018000, 0);

    msleep(100);

    spi_select(pBAR0 + 0x00018000, 1);

    spi_xfer(pBAR0 + 0x00018000, BIT(7) | 0x00);
    spi_xfer(pBAR0 + 0x00018000, 0x0C);
    DBGPRINTLN_CTX("Synth VendorID Low: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));
    DBGPRINTLN_CTX("Synth VendorID High: 0x%02X", spi_xfer(pBAR0 + 0x00018000, 0x00));

    spi_select(pBAR0 + 0x00018000, 0);

    iowrite32(ioread32(pBAR0 + 0x0001A000 + 0x00) & ~BIT(0), pBAR0 + 0x0001A000 + 0x00); // Assert SYNTH_CE

    DBGPRINTLN_CTX("--- TRX SPI Test ---");

    spi_init(pBAR0 + 0x00014000);
    iowrite32(BIT(7) | BIT(6) | BIT(5) | BIT(4) | BIT(2) | BIT(1), pBAR0 + 0x00014000 + 0x60);

    cmd = (0 << 15) | ((((1) - 1) & 0x7) << 12) | ((0x037) & 0x3FF);

    spi_select(pBAR0 + 0x00014000, 1);

    spi_xfer(pBAR0 + 0x00014000, cmd >> 8);
    spi_xfer(pBAR0 + 0x00014000, cmd & 0xFF);
    DBGPRINTLN_CTX("TRX Product ID Reg: 0x%02X", spi_xfer(pBAR0 + 0x00014000, 0x00));

    spi_select(pBAR0 + 0x00014000, 0);



    DBGPRINTLN_CTX("--- SYS_I2C Test ---");
    i2c_init(pBAR0 + 0x00016000);

    i2c_write_byte(pBAR0 + 0x00016000, 0x60, 0x00, 0);
    DBGPRINTLN_CTX("Si5351C Status: 0x%02X", i2c_read_byte(pBAR0 + 0x00016000, 0x60, 1));


    set_pbar(pBAR0);

    DBGPRINTLN_CTX("si5351_init: %hhu", si5351_init());

    clk_conf();
    iowrite32(0, pBAR0 + 0x00016000 + 0x124); // Assert CLK_MNGR_OEn


    DBGPRINTLN_CTX("--- CODEC_I2C Test ---");
    i2c_init(pBAR0 + 0x00006000);

    iowrite32(BIT(0), pBAR0 + 0x00006000 + 0x124); // Deassert CODEC_RSTn
    msleep(100);

    buf[0] = 0x00;
    buf[1] = 0x00;
    i2c_write(pBAR0 + 0x00006000, 0x3C, buf, 2, 0);
    DBGPRINTLN_CTX("ADAU1372 Reg0 before: 0x%02X", i2c_read_byte(pBAR0 + 0x00006000, 0x3C, 1));

    buf[0] = 0x00;
    buf[1] = 0x00;
    buf[2] = BIT(4);
    i2c_write(pBAR0 + 0x00006000, 0x3C, buf, 3, 1);

    buf[0] = 0x00;
    buf[1] = 0x00;
    i2c_write(pBAR0 + 0x00006000, 0x3C, buf, 2, 0);
    DBGPRINTLN_CTX("ADAU1372 Reg0 after: 0x%02X", i2c_read_byte(pBAR0 + 0x00006000, 0x3C, 1));

    iowrite32(0, pBAR0 + 0x00006000 + 0x124); // Assert CODEC_RSTn

    pci_iounmap(pdev, pBAR0);

    pBAR1 = pci_iomap(pdev, 1, 0);

    if(!pBAR1)
    {
        DBGPRINTLN_CTX("Can't map BAR1, aborting");

        return -EFAULT;
    }

    DBGPRINTLN_CTX("BAR1 mapped at %p", pBAR1);

    // Basic memtest
    // DBGPRINTLN_CTX("Memory test - 1st stage");

    // for(int i = 0; i < 0x20000000; i += 4)
    //     iowrite32(i, pBAR1 + i);

    // for(int i = 0; i < 0x20000000; i += 4)
    //     if(ioread32(pBAR1 + i) != i)
    //     {
    //         DBGPRINTLN_CTX("Memory test failed at 0x%08X", i);

    //         break;
    //     }

    // DBGPRINTLN_CTX("Memory test - 2nd stage");

    // for(int i = 0; i < 0x20000000; i += 4)
    //     iowrite32(~i, pBAR1 + i);

    // for(int i = 0; i < 0x20000000; i += 4)
    //     if(ioread32(pBAR1 + i) != ~i)
    //     {
    //         DBGPRINTLN_CTX("Memory test failed at 0x%08X", i);

    //         break;
    //     }

    DBGPRINTLN_CTX("DDR First Word: 0x%08X", ioread32(pBAR1 + 0x00000000));
    DBGPRINTLN_CTX("DDR Last Word: 0x%08X", ioread32(pBAR1 + 0x1FFFFFFC));

    iowrite32(0xDEADBEEF, pBAR1 + 0x00000000);
    iowrite32(0xDEADCAFE, pBAR1 + 0x1FFFFFFC);

    DBGPRINTLN_CTX("DDR First Word: 0x%08X", ioread32(pBAR1 + 0x00000000));
    DBGPRINTLN_CTX("DDR Last Word: 0x%08X", ioread32(pBAR1 + 0x1FFFFFFC));

    pci_iounmap(pdev, pBAR1);

    return 0;

    // dma_set_mask_and_coherent
    // pci_enable_msix_range
}

void icyradio_pci_remove(struct pci_dev *pdev)
{
    pci_clear_master(pdev);
    pci_release_regions(pdev);
    pci_disable_device(pdev);

    DBGPRINTLN_CTX("IcyRadio device removed");

    return;
}

static struct pci_driver icyradio_pci_driver = {
	.name = "icyradio",
	.id_table = icyradio_pci_tbl,
	.probe = icyradio_pci_probe,
	.remove = icyradio_pci_remove,
};

static int __init icyradio_init(void)
{
    int status;

    status = pci_register_driver(&icyradio_pci_driver);

    if(status)
    {
        DBGPRINTLN_CTX("Can't register PCI driver (%d), aborting", status);

        return status;
    }

    DBGPRINTLN_CTX("IcyRadio kernel module loaded");

    return 0;
}
static void __exit icyradio_exit(void)
{
    pci_unregister_driver(&icyradio_pci_driver);

    DBGPRINTLN_CTX("IcyRadio kernel module unloaded");
}

module_init(icyradio_init);
module_exit(icyradio_exit);