#include "rmu.h"

void rmu_init(uint32_t ulPinMode, uint32_t ulSysMode, uint32_t ulLockupMode, uint32_t ulWatchdogMode)
{
    RMU->CTRL = (RMU->CTRL & ~(_RMU_CTRL_PINRMODE_MASK | _RMU_CTRL_SYSRMODE_MASK | _RMU_CTRL_LOCKUPRMODE_MASK | _RMU_CTRL_WDOGRMODE_MASK)) | (ulPinMode & _RMU_CTRL_PINRMODE_MASK) | (ulSysMode & _RMU_CTRL_SYSRMODE_MASK) | (ulLockupMode & _RMU_CTRL_LOCKUPRMODE_MASK) | (ulWatchdogMode & _RMU_CTRL_WDOGRMODE_MASK);
}

uint8_t rmu_get_reset_reason()
{
    uint32_t ulReason = RMU->RSTCAUSE & _RMU_RSTCAUSE_MASK;

    if(!ulReason)
        return RMU_RESET_CAUSE_NONE;

    if((ulReason & RMU_RSTCAUSE_POR_MASK) == RMU_RSTCAUSE_POR_COMP)
        return RMU_RESET_CAUSE_POR;

    if((ulReason & RMU_RSTCAUSE_BOR_AVDD_MASK) == RMU_RSTCAUSE_BOR_AVDD_COMP)
        return RMU_RESET_CAUSE_AVDD_BOD;

    if((ulReason & RMU_RSTCAUSE_BOR_DVDD_MASK) == RMU_RSTCAUSE_BOR_DVDD_COMP)
        return RMU_RESET_CAUSE_DVDD_BOD;

    if((ulReason & RMU_RSTCAUSE_BOR_DECOUPLE_MASK) == RMU_RSTCAUSE_BOR_DECOUPLE_COMP)
        return RMU_RESET_CAUSE_DECOUPLE_BOD;

    if((ulReason & RMU_RSTCAUSE_PIN_MASK) == RMU_RSTCAUSE_PIN_COMP)
        return RMU_RESET_CAUSE_EXT_PIN;

    if((ulReason & RMU_RSTCAUSE_LOCKUP_MASK) == RMU_RSTCAUSE_LOCKUP_COMP)
        return RMU_RESET_CAUSE_CORE_LOCKUP;

    if((ulReason & RMU_RSTCAUSE_SYSREQ_MASK) == RMU_RSTCAUSE_SYSREQ_COMP)
        return RMU_RESET_CAUSE_SYSRESETREQ;

    if((ulReason & RMU_RSTCAUSE_WDOG_MASK) == RMU_RSTCAUSE_WDOG_COMP)
        return RMU_RESET_CAUSE_WATCHDOG;

    if((ulReason & RMU_RSTCAUSE_BUM_MASK) == RMU_RSTCAUSE_BUM_COMP)
        return RMU_RESET_CAUSE_BACKUP_MODE;

    if((ulReason & RMU_RSTCAUSE_EM4_MASK) == RMU_RSTCAUSE_EM4_COMP)
        return RMU_RESET_CAUSE_EM4_MODE;

    return RMU_RESET_CAUSE_UNKNOWN;
}
void rmu_clear_reset_reason()
{
    RMU->CMD = RMU_CMD_RCCLR;
}

uint8_t rmu_get_reset_state()
{
    return (RMU->CTRL & _RMU_CTRL_RESETSTATE_MASK) >> _RMU_CTRL_RESETSTATE_SHIFT;
}
void rmu_set_reset_state(uint8_t ubState)
{
    RMU->CTRL = (RMU->CTRL & ~_RMU_CTRL_RESETSTATE_MASK) | ((ubState << _RMU_CTRL_RESETSTATE_SHIFT) & _RMU_CTRL_RESETSTATE_MASK);
}