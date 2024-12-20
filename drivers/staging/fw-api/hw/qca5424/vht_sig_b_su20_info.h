
/*
 * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
 * SPDX-License-Identifier: ISC
 */

 

 
 
 
 
 
 
 
 


#ifndef _VHT_SIG_B_SU20_INFO_H_
#define _VHT_SIG_B_SU20_INFO_H_
#if !defined(__ASSEMBLER__)
#endif

#define NUM_OF_DWORDS_VHT_SIG_B_SU20_INFO 1


struct vht_sig_b_su20_info {
#ifndef WIFI_BIT_ORDER_BIG_ENDIAN
             uint32_t length                                                  : 17,  
                      vhtb_reserved                                           :  3,  
                      tail                                                    :  6,  
                      reserved                                                :  5,  
                      rx_ndp                                                  :  1;  
#else
             uint32_t rx_ndp                                                  :  1,  
                      reserved                                                :  5,  
                      tail                                                    :  6,  
                      vhtb_reserved                                           :  3,  
                      length                                                  : 17;  
#endif
};


 

#define VHT_SIG_B_SU20_INFO_LENGTH_OFFSET                                           0x00000000
#define VHT_SIG_B_SU20_INFO_LENGTH_LSB                                              0
#define VHT_SIG_B_SU20_INFO_LENGTH_MSB                                              16
#define VHT_SIG_B_SU20_INFO_LENGTH_MASK                                             0x0001ffff


 

#define VHT_SIG_B_SU20_INFO_VHTB_RESERVED_OFFSET                                    0x00000000
#define VHT_SIG_B_SU20_INFO_VHTB_RESERVED_LSB                                       17
#define VHT_SIG_B_SU20_INFO_VHTB_RESERVED_MSB                                       19
#define VHT_SIG_B_SU20_INFO_VHTB_RESERVED_MASK                                      0x000e0000


 

#define VHT_SIG_B_SU20_INFO_TAIL_OFFSET                                             0x00000000
#define VHT_SIG_B_SU20_INFO_TAIL_LSB                                                20
#define VHT_SIG_B_SU20_INFO_TAIL_MSB                                                25
#define VHT_SIG_B_SU20_INFO_TAIL_MASK                                               0x03f00000


 

#define VHT_SIG_B_SU20_INFO_RESERVED_OFFSET                                         0x00000000
#define VHT_SIG_B_SU20_INFO_RESERVED_LSB                                            26
#define VHT_SIG_B_SU20_INFO_RESERVED_MSB                                            30
#define VHT_SIG_B_SU20_INFO_RESERVED_MASK                                           0x7c000000


 

#define VHT_SIG_B_SU20_INFO_RX_NDP_OFFSET                                           0x00000000
#define VHT_SIG_B_SU20_INFO_RX_NDP_LSB                                              31
#define VHT_SIG_B_SU20_INFO_RX_NDP_MSB                                              31
#define VHT_SIG_B_SU20_INFO_RX_NDP_MASK                                             0x80000000



#endif    
