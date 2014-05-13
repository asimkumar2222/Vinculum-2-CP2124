/*
** GetHIDDescp.c
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
#include <vos.h>

#include <stdio.h>
#include <string.h>

#include "USBHost.h"
#include "USB.h"
#include "UART.h"

#include "USBHID.h"

#include "GetHIDDescp.h"

void getReportDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle, unsigned char descIndex, unsigned short descLength)
{
	unsigned char status;
	unsigned char theBuf[256];
	short offset = 0;
	short totallen = 1;
	char desctype;
	unsigned char *pbuf;

	unsigned short i = 0;
	unsigned short var = 0;
	unsigned char numdesc = 0;

	usb_deviceRequest_t desc_dev;
	usbhost_ioctl_cb_t hc_iocb;

	desc_dev.bmRequestType = USB_BMREQUESTTYPE_DEV_TO_HOST |
		USB_BMREQUESTTYPE_STANDARD |
		USB_BMREQUESTTYPE_INTERFACE;

	desc_dev.bRequest = USB_REQUEST_CODE_GET_DESCRIPTOR;

	// HID Report descriptor
	desc_dev.wValue = (USB_DESCRIPTOR_TYPE_REPORT << 8) | descIndex;
	desc_dev.wIndex = 0x0000;
	desc_dev.wLength = 0x00ff;

	hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;

	hc_iocb.handle.ep = epHandle;
	hc_iocb.set = &desc_dev;
	hc_iocb.get = theBuf;

	status = vos_dev_ioctl(hUsb1, &hc_iocb);
	{
		pbuf = &theBuf[0];

		while (offset < totallen)
		{
			printf("\n Report Descriptor %d:\n", descIndex);

			// Report decriptors have a variable length
			var = descLength;

			for (i = 0; i < var; i += 2)
			{
				printf("  %x %x\n", pbuf[i], pbuf[i + 1]);
			}

			offset += descLength;
			pbuf += descLength;
		}
	}
}

void getHIDDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle)
{
	unsigned char status;
	unsigned char theBuf[256];
	short offset = 0;
	short totallen = 1;
	short desclen;
	char desctype;
	unsigned char *pbuf;

	unsigned char i = 0;
	unsigned char var = 0;
	unsigned char numdesc = 0;

	usb_deviceRequest_t desc_dev;
	usbhost_ioctl_cb_t hc_iocb;

	desc_dev.bmRequestType = USB_BMREQUESTTYPE_DEV_TO_HOST |
		USB_BMREQUESTTYPE_STANDARD |
		USB_BMREQUESTTYPE_INTERFACE;

	desc_dev.bRequest = USB_REQUEST_CODE_GET_DESCRIPTOR;

	// HID descriptor
	desc_dev.wValue = (USB_DESCRIPTOR_TYPE_HID << 8) | 0x00;
	desc_dev.wIndex = 0x0000;
	desc_dev.wLength = 0x00ff;

	hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;

	hc_iocb.handle.ep = epHandle;
	hc_iocb.set = &desc_dev;
	hc_iocb.get = theBuf;

	status = vos_dev_ioctl(hUsb1, &hc_iocb);
	{
		pbuf = &theBuf[0];

		while (offset < totallen)
		{
			desclen = pbuf[0];
			desctype = pbuf[1];
			// remember the number of descriptors
			numdesc = pbuf[5];

			printf("\nHID Descriptor:\n");
			printf(" bcdHID:                   %x\n", ((pbuf[3] << 8) | pbuf[2]));
			printf(" bCountryCode:             %x\n", pbuf[4]);
			printf(" bNumDescriptors:          %x\n", pbuf[5]);

			// HID devices have at least 1 report descriptor
			// there are variable fields from here depending on the bNumDescriptors field
			var = numdesc;

			for (i = 0; i < var; i++)
			{
				printf(" bDescriptorType_%d:        %x\n", i, pbuf[i + 6]);
				printf(" wDescriptorLength_%d:      %x%x\n", i, pbuf[i + 7 + var], pbuf[i + 6 + var]);

				if (pbuf[i + 6] == USB_DESCRIPTOR_TYPE_REPORT)
				{
					getReportDescp(hUsb1, epHandle, i, ((pbuf[i + 7 + var] << 8) | pbuf[i + 6 + var]));
				}
			}

			offset += desclen;
			pbuf += desclen;
		}
	}
}

