
set_operating_conditions -board_layers 4to7
set_operating_conditions -heatsink none
set_operating_conditions -voltage {1V0 1.000} -supply_current_budget {1V0 6.000}
set_operating_conditions -voltage {1V35 1.350} -supply_current_budget {1V35 2.000}
set_operating_conditions -voltage {1V2 1.200} -supply_current_budget {1V2 2.000}
set_operating_conditions -voltage {1V8 1.800} -supply_current_budget {1V8 2.000}
set_operating_conditions -voltage {2V5 2.500} -supply_current_budget {2V5 2.000}
set_operating_conditions -voltage {3V3 3.300} -supply_current_budget {3V3 2.000}
set_operating_conditions -voltage {5V0 5.200} -supply_current_budget {5V0 6.000}
set_operating_conditions -voltage {PCIE_12V0 12.000} -supply_current_budget {PCIE_12V0 5.500}
set_operating_conditions -voltage {USB_VBUS 15.000} -supply_current_budget {USB_VBUS 3.000}
set_operating_conditions -voltage {VEXT 12.000} -supply_current_budget {VEXT 3.000}


create_power_rail USB_VBUS
create_power_rail VEXT
