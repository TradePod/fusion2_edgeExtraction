/*
 * File Name:         C:\Projects\fusion2_HWaccel_IP\rgb_gauss_sobel_full_64\ipcore\Subsystem_ip_v1_0\include\Subsystem_ip_addr.h
 * Description:       C Header File
 * Created:           2023-05-04 18:21:28
*/

#ifndef SUBSYSTEM_IP_H_
#define SUBSYSTEM_IP_H_

#define  IPCore_Reset_Subsystem_ip                          0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_Subsystem_ip                         0x4  //enabled (by default) when bit 0 is 0x1
#define  AXI4_Stream_Video_Slave_ImageWidth_Subsystem_ip    0x8  //Active pixels per line in each video frame for "AXI4-Stream Video Slave" interface, the default value is 1920.
#define  AXI4_Stream_Video_Slave_ImageHeight_Subsystem_ip   0xC  //Active video lines in each video frame for "AXI4-Stream Video Slave" interface, the default value is 1080.
#define  AXI4_Stream_Video_Slave_HPorch_Subsystem_ip        0x10  //Horizontal porch length in each video frame for "AXI4-Stream Video Slave" interface, the default value is 280.
#define  AXI4_Stream_Video_Slave_VPorch_Subsystem_ip        0x14  //Vertical porch length in each video frame for "AXI4-Stream Video Slave" interface, the default value is 45.
#define  IPCore_Timestamp_Subsystem_ip                      0x18  //contains unique IP timestamp (yymmddHHMM): 2305041821
#define  greenMax_Data_Subsystem_ip                         0x100  //data register for Inport greenMax
#define  blueMax_Data_Subsystem_ip                          0x104  //data register for Inport blueMax
#define  redMax_Data_Subsystem_ip                           0x108  //data register for Inport redMax
#define  greenMin_Data_Subsystem_ip                         0x10C  //data register for Inport greenMin
#define  blueMin_Data_Subsystem_ip                          0x110  //data register for Inport blueMin
#define  redMin_Data_Subsystem_ip                           0x114  //data register for Inport redMin

#endif /* SUBSYSTEM_IP_H_ */
