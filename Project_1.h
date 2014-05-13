/*
** Filename: Project_1.h
**
** Automatically created by Application Wizard 2.0.0
** 
** Part of solution Solution_1 in project Project_1
**
** Comments: 
**
** Important: Sections between markers "FTDI:S*" and "FTDI:E*" will be overwritten by
** the Application Wizard
*/

#ifndef _Project_1_H_
#define _Project_1_H_

#include "vos.h"

/* FTDI:SHF Header Files */
#include "USB.h"
#include "USBHost.h"
#include "ioctl.h"
#include "UART.h"
#include "GPIO.h"
#include "string.h"
#include "errno.h"
/* FTDI:EHF */

/* FTDI:SDC Driver Constants */
#define VOS_DEV_USBHOST_1 0
#define VOS_DEV_USBHOST_2 1
#define VOS_DEV_UART 2
#define VOS_DEV_GPIO_PORT_A 3

#define VOS_NUMBER_DEVICES 4
/* FTDI:EDC */
// Additional Device Driver
#define VOS_DEV_USBHOSTGENERIC 2
/* FTDI:SXH Externs */
/* FTDI:EXH */

#endif /* _Project_1_H_ */
