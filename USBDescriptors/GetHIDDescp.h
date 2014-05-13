/*
** GetHIDDescp.h
**
** Copyright © 2010-2011 Future Technology Devices International Limited
**
**  C Header file for Vinculum II sample application
** Main module
**
** Author: FTDI
** Project: Vinculum II
** Module: Vinculum II Sample Applications
** Comments:
**
** History:
**  1 – Initial version
**
*/
#ifndef GetHIDDescp_H
#define GetHIDDescp_H

void getHIDDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle);
void getReportDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle, unsigned char descIndex, unsigned short descLength);

#endif

