/*
** GetHubDescp.c
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

#include "GetHubDescp.h"

void getHubDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle)
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
	unsigned char numports = 0;

	usb_deviceRequest_t desc_dev;
	usbhost_ioctl_cb_t hc_iocb;

	desc_dev.bmRequestType = USB_BMREQUESTTYPE_DEV_TO_HOST |
		USB_BMREQUESTTYPE_CLASS |
		USB_BMREQUESTTYPE_DEVICE;

	desc_dev.bRequest = USB_HUB_REQUEST_CODE_GET_DESCRIPTOR;

	// Hub descriptor
	desc_dev.wValue = (USB_DESCRIPTOR_TYPE_HUB << 8) | 0x00;
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
			numports = pbuf[2];

			printf("\nHub Descriptor:\n");
			printf(" bNbrPorts:                %x\n", pbuf[2]);
			printf(" wHubCharacteristics:      %x\n", ((pbuf[4] << 8) | pbuf[3]));
			printf(" bPwrOn2PwrGood:           %x\n", pbuf[5]);
			printf(" bHubContrCurrent:         %x\n", pbuf[6]);

			// the remaining fields have 1 bit per port, so there are variable
			// numbers of them depending on the bNbrPorts field
			var = (numports / 8);

			if (numports % 8 != 0)
				var++;

			for (i = 0; i < var; i++)
			{
				printf(" DeviceRemovable_%d:        %x\n", i, pbuf[i + 7]);
			}

			for (i = 0; i < var; i++)
			{
				printf(" PortPwrCtrlMask_%d:        %x\n", i, pbuf[i + 7 + var]);
			}

			offset += desclen;
			pbuf += desclen;
		}
	}
}

