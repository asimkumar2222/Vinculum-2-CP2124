/*
** GetConfigDescp.c
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

#include "GetConfigDescp.h"
#include "GetHubDescp.h"
#include "GetHIDDescp.h"

void getConfigDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle)
{
	unsigned char status;
	unsigned char theBuf[256];
	short offset = 0;
	short totallen = 1;
	short desclen;
	char desctype;
	unsigned char *pbuf;

	unsigned char i = 0;
	unsigned char ifClass = 0;

	usb_deviceRequest_t desc_dev;
	usbhost_ioctl_cb_t hc_iocb;

	desc_dev.bmRequestType = USB_BMREQUESTTYPE_DEV_TO_HOST |
		USB_BMREQUESTTYPE_STANDARD |
		USB_BMREQUESTTYPE_DEVICE;

	desc_dev.bRequest = USB_REQUEST_CODE_GET_DESCRIPTOR;

	// Configuration descriptors, Endpoints and Interface
	desc_dev.wValue = (USB_DESCRIPTOR_TYPE_CONFIGURATION << 8) | 0x00;
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

			if (desctype == USB_DESCRIPTOR_TYPE_CONFIGURATION)
			{
				totallen = (pbuf[3] << 8) + pbuf[2];
				printf("\nConfiguration Descriptors:\n");
				printf(" wTotalLength:             %x\n", totallen);
				printf(" bNumInterfaces:           %x\n", pbuf[4]);
				printf(" bConfigurationValue:      %x\n", pbuf[5]);
				printf(" iConfiguration:           %x\n", pbuf[6]);
				printf(" bmAttributes:             %x\n", pbuf[7]);
				printf(" MaxPower:                 %x\n", pbuf[8]);
			}

			if (desctype == USB_DESCRIPTOR_TYPE_INTERFACE)
			{
				ifClass = pbuf[5];

				printf("\nInterface Descriptors:\n");
				printf(" bInterfaceNumber:         %x\n", pbuf[2]);
				printf(" bAlternateSetting:        %x\n", pbuf[3]);
				printf(" bNumEndpoints:            %x\n", pbuf[4]);
				printf(" bInterfaceClass:          %x\n", pbuf[5]);
				printf(" bInterfaceSubClass:       %x\n", pbuf[6]);
				printf(" bInterfaceProtocol:       %x\n", pbuf[7]);
				printf(" iInterface:               %x\n", pbuf[8]);

				if (ifClass == USB_CLASS_HUB)
				{
					// read the hub descriptor
					getHubDescp(hUsb1, epHandle);
				}
				else if (ifClass == USB_CLASS_HID)
				{
					// read the HID descriptors
					getHIDDescp(hUsb1, epHandle);
				}
			}

			if (desctype == USB_DESCRIPTOR_TYPE_ENDPOINT)
			{
				printf("\nEndpoint Descriptors:\n");
				printf(" bEndpointAddress:         %x\n", pbuf[2]);
				printf(" Transfer Type:            ");

				if ((pbuf[3] & 0x03) == USB_ENDPOINT_DESCRIPTOR_ATTR_CONTROL)
				{
					printf("Control\n");
				}

				if ((pbuf[3] & 0x03) == USB_ENDPOINT_DESCRIPTOR_ATTR_ISOCHRONOUS)
				{
					printf("Isochronous\n");
				}

				if ((pbuf[3] & 0x03) == USB_ENDPOINT_DESCRIPTOR_ATTR_BULK)
				{
					printf("Bulk\n");
				}

				if ((pbuf[3] & 0x03) == USB_ENDPOINT_DESCRIPTOR_ATTR_INTERRUPT)
				{
					printf("Interrupt\n");
				}

				printf(" wMaxPacketSize:           %x\n", pbuf[4]);
				printf(" bInterval:                %x\n", pbuf[5]);
			}

			offset += desclen;
			pbuf += desclen;
		}
	}
}

