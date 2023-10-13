#include "axi_irq_ctrl.h"

static pthread_t tPollThread;
static pthread_mutex_t tIRQPendMutex = PTHREAD_MUTEX_INITIALIZER;
static axi_irq_ctrl_isr_info_t sISRInfo[AXI_IRQ_CTRL_IRQ_NUM_MAX];
static uint32_t ulIRQMask = 0x00000000; // Mask to indicate which IRQs to handle

static void axi_irq_ctrl_reg_write(uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIIRQCtrlBase + ulRegister) = ulValue;
}
static uint32_t axi_irq_ctrl_reg_read(uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIIRQCtrlBase + ulRegister);
}

static void *axi_irq_ctrl_poll_thread(void *pParam)
{
    int iDeviceFile = *(int *)pParam;
    struct pollfd tPollFD;

    while(1)
    {
        tPollFD.fd = iDeviceFile;
        tPollFD.events = POLLIN;

        if(poll(&tPollFD, 1, -1) < 0)
            break;

        pthread_mutex_lock(&tIRQPendMutex);

        uint32_t ulPend = axi_irq_ctrl_reg_read(AXI_IRQ_CTRL_REG_IRQ_PEND);

        ulPend &= ulIRQMask;

        axi_irq_ctrl_reg_write(AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, ulPend);

        pthread_mutex_unlock(&tIRQPendMutex);

        for(uint8_t i = 0; i < AXI_IRQ_CTRL_IRQ_NUM_MAX; i++)
        {
            if(ulPend & (1 << i))
            {
                if(sISRInfo[i].pISR)
                    sISRInfo[i].pISR(sISRInfo[i].pArg);
            }
        }
    }

    return NULL;
}

uint8_t axi_irq_ctrl_init(int iDeviceFile)
{
    uint32_t ulVersion = axi_irq_ctrl_get_core_version();

    DBGPRINTLN_CTX("Found AXI IRQ Controller Core v%d.%d.%d", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

    if(AXI_CORE_VERSION_MAJOR(ulVersion) < 1)
    {
        DBGPRINTLN_CTX("AXI IRQ Controller Core v%d.%d.%d is not supported", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion));

        return 0;
    }

    axi_irq_ctrl_reg_write(AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR, 0xFFFFFFFF); // Disable all IRQs
    axi_irq_ctrl_reg_write(AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, 0xFFFFFFFF); // Clear all pending IRQs

    ulIRQMask = 0x00000000;

    for(uint8_t i = 0; i < AXI_IRQ_CTRL_IRQ_NUM_MAX; i++)
        sISRInfo[i].pISR = NULL;

    if(pthread_create(&tPollThread, NULL, axi_irq_ctrl_poll_thread, &iDeviceFile) < 0)
    {
        DBGPRINTLN_CTX("Failed to create IRQ poll thread");

        return 0;
    }

    return 1;
}

uint32_t axi_irq_ctrl_get_core_version()
{
    return axi_irq_ctrl_reg_read(AXI_IRQ_CTRL_REG_VERSION);
}

uint8_t axi_irq_ctrl_irq_config(enum axi_irq_ctrl_irq_num eIRQNum, uint8_t ubDest, uint8_t ubEnable)
{
    if(eIRQNum >= AXI_IRQ_CTRL_IRQ_NUM_MAX)
        return 0;

    axi_irq_ctrl_reg_write(AXI_IRQ_CTRL_REG_IRQ_CONFIG(eIRQNum), (ubEnable ? AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_EN : 0) | AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST(ubDest));

    return 1;
}
uint8_t axi_irq_ctrl_irq_set_isr(enum axi_irq_ctrl_irq_num eIRQNum, axi_irq_ctrl_isr_t pISR, void *pArg)
{
    if(eIRQNum >= AXI_IRQ_CTRL_IRQ_NUM_MAX)
        return 0;

    if(pISR != NULL)
        ulIRQMask |= (1 << eIRQNum);
    else
        ulIRQMask &= ~(1 << eIRQNum);

    sISRInfo[eIRQNum].pISR = pISR;
    sISRInfo[eIRQNum].pArg = pArg;

    return 1;
}
uint8_t axi_irq_ctrl_irq_get_pend(enum axi_irq_ctrl_irq_num eIRQNum)
{
    if(eIRQNum >= AXI_IRQ_CTRL_IRQ_NUM_MAX)
        return 0;

    pthread_mutex_lock(&tIRQPendMutex);
    uint8_t ubPend = (axi_irq_ctrl_reg_read(AXI_IRQ_CTRL_REG_IRQ_PEND) & BIT(eIRQNum)) ? 1 : 0;
    pthread_mutex_unlock(&tIRQPendMutex);

    return ubPend;
}
uint8_t axi_irq_ctrl_irq_set_pend(enum axi_irq_ctrl_irq_num eIRQNum, uint8_t ubPend)
{
    if(eIRQNum >= AXI_IRQ_CTRL_IRQ_NUM_MAX)
        return 0;

    axi_irq_ctrl_reg_write(ubPend ? AXI_IRQ_CTRL_REG_IRQ_PEND_SET : AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, BIT(eIRQNum));

    return 1;
}
uint8_t axi_irq_ctrl_irq_get_enable(enum axi_irq_ctrl_irq_num eIRQNum)
{
    if(eIRQNum >= AXI_IRQ_CTRL_IRQ_NUM_MAX)
        return 0;

    return (axi_irq_ctrl_reg_read(AXI_IRQ_CTRL_REG_IRQ_ENABLE) & BIT(eIRQNum)) ? 1 : 0;
}
uint8_t axi_irq_ctrl_irq_set_enable(enum axi_irq_ctrl_irq_num eIRQNum, uint8_t ubEnable)
{
    if(eIRQNum >= AXI_IRQ_CTRL_IRQ_NUM_MAX)
        return 0;

    axi_irq_ctrl_reg_write(ubEnable ? AXI_IRQ_CTRL_REG_IRQ_ENABLE_SET : AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR, BIT(ubEnable));

    return 1;
}