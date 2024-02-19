#ifndef __PORT_H__
#define __PORT_H__

#include <sam.h>
#include "utils.h"
#include "nvic.h"

// PORT Helper macros
#define PORT_PERI_MUX_SELECT(p, i, n) PORT_REGS->GROUP[(p)].PORT_PMUX[(i) >> 1] = (PORT_REGS->GROUP[(p)].PORT_PMUX[(i) >> 1] & ((i) & 1 ? ~PORT_PMUX_PMUXO_Msk : ~PORT_PMUX_PMUXE_Msk)) | ((n) << ((i) & 1 ? PORT_PMUX_PMUXO_Pos : PORT_PMUX_PMUXE_Pos));

// LED MACROS
#define LED_HIGH()            PORT_REGS->GROUP[0].PORT_OUTSET = BIT(0)
#define LED_LOW()             PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(0)
#define LED_TOGGLE()          PORT_REGS->GROUP[0].PORT_OUTTGL = BIT(0)
#define LED_STATUS()          !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(0))

// UPD350 MACROS
#define UPD350_SELECT()       PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(10)
#define UPD350_UNSELECT()     PORT_REGS->GROUP[0].PORT_OUTSET = BIT(10)

// VOLTAGE ENABLE MACROS
#define VEXT_ENABLE()         PORT_REGS->GROUP[0].PORT_OUTSET = BIT(6)
#define VEXT_DISABLE()        PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(6)
#define VEXT_STATUS()         !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(6))
#define PCIE_12V0_ENABLE()    PORT_REGS->GROUP[0].PORT_OUTSET = BIT(15)
#define PCIE_12V0_DISABLE()   PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(15)
#define PCIE_12V0_STATUS()    !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(15))
#define VBUS_SNK_ENABLE()     PORT_REGS->GROUP[0].PORT_OUTSET = BIT(27)
#define VBUS_SNK_DISABLE()    PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(27)
#define VBUS_SNK_STATUS()     !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(27))
#define NO_VOLTAGE_ENABLED()  !(PORT_REGS->GROUP[0].PORT_OUT & (BIT(6) | BIT(15) | BIT(27)))
#define VOLTAGE_DISABLE_ALL() PORT_REGS->GROUP[0].PORT_OUTCLR = (BIT(6) | BIT(15) | BIT(27))

// CM4 MACROS
#define CM4_GLOBAL_ENABLE()   PORT_REGS->GROUP[0].PORT_OUTSET = BIT(23)
#define CM4_GLOBAL_DISABLE()  PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(23)
#define CM4_GLOBAL_STATUS()   !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(23))
#define CM4_BTLDR_ENABLE()    PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(22)
#define CM4_BTLDR_DISABLE()   PORT_REGS->GROUP[0].PORT_OUTSET = BIT(22)
#define CM4_BTLDR_STATUS()    !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(22))
#define CM4_USB_OTG_HOST()    PORT_REGS->GROUP[0].PORT_OUTCLR = BIT(28)
#define CM4_USB_OTG_DEVICE()  PORT_REGS->GROUP[0].PORT_OUTSET = BIT(28)
#define CM4_USB_OTG_STATUS()  !!(PORT_REGS->GROUP[0].PORT_OUT & BIT(28))
#define CM4_RUNNING()         !!(PORT_REGS->GROUP[0].PORT_IN & BIT(19))

// FPGA MACROS
#define FPGA_INIT_ASSERT()    PORT_REGS->GROUP[0].PORT_DIRSET = BIT(1)
#define FPGA_INIT_DEASSERT()  PORT_REGS->GROUP[0].PORT_DIRCLR = BIT(1)

void port_init();

#endif  // __PORT_H__
