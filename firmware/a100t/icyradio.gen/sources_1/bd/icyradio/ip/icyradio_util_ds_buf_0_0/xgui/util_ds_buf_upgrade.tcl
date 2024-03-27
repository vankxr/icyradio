if {![namespace exists xcoUpgradeLib]} {

namespace eval util_ds_buf_2_2 {
  proc upgrade_from_util_ds_buf_v2_1_a {xciValues} {
    namespace import ::xcoUpgradeLib::*
    upvar $xciValues valueArray

 
          removeParameter  OBUFDS_GTE4_ADV_OB valueArray
          removeParameter  OBUFDS_GTE4_ADV_O valueArray

          removeParameter  OBUFDS_GTE5_ADV_OB valueArray
          removeParameter  OBUFDS_GTE5_ADV_O valueArray

          removeParameter  OBUFDS_GTE5_O valueArray
          removeParameter  OBUFDS_GTE5_OB valueArray

          removeParameter  OBUFDS_GTE4_OB valueArray
          removeParameter  OBUFDS_GTE4_O valueArray

          removeParameter  OBUFDS_GTE3_OB valueArray
          removeParameter  OBUFDS_GTE3_O valueArray
          removeParameter  OBUFDS_GTE3_ADV_OB valueArray
          removeParameter  OBUFDS_GTE3_ADV_O valueArray


          removeParameter  IBUFDS_GTM_I valueArray
          removeParameter  IBUFDS_GTM_IB valueArray

          removeParameter  OBUFDS_GTM_O valueArray
          removeParameter  OBUFDS_GTM_OB valueArray

          removeParameter  OBUFDS_GTM_ADV_O valueArray
          removeParameter  OBUFDS_GTM_ADV_OB valueArray

          removeParameter  IBUFDS_GTME5_IB valueArray
          removeParameter  IBUFDS_GTME5_I valueArray


          removeParameter  OBUFDS_GTME5_OB valueArray
          removeParameter  OBUFDS_GTME5_O valueArray
          removeParameter  OBUFDS_GTME5_ADV_OB valueArray
          removeParameter  OBUFDS_GTME5_ADV_O valueArray
          removeParameter  OBUF_DS_N valueArray
          removeParameter  OBUF_DS_P valueArray

          addParameter  BOARD_PARAMETER valueArray
         
          addParameter  OUT_OBUFDS_GTME5_ADV valueArray

          addParameter  OUT_OBUFDS_GTME5 valueArray
          addParameter  FREQ_HZ valueArray
          addParameter  CLK_IN_D1 valueArray
          addParameter  CLK_OUT_D3 valueArray

          addParameter  CLK_IN_D2 valueArray

          addParameter OUT_OBUFDS_ADV_GTE3 valueArray

          addParameter OUT_OBUFDS_GTE3 valueArray

          addParameter OUT_OBUFDS_GTE4 valueArray

          addParameter OUT_OBUFDS_GTE5 valueArray

          addParameter OUT_OBUFDS_GTE5_ADV valueArray 

          addParameter OUT_OBUFDS_ADV_GTE4 valueArray
          namespace forget ::xcoUpgradeLib::\*
 
          return
        }

}

}
