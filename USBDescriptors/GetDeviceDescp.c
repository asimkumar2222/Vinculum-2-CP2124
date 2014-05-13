/*
** GetDeviceDescp.c
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

#include "GetDeviceDescp.h"

void getDeviceDescp(VOS_HANDLE hUsb1, usbhost_ep_handle_ex epHandle)
{
	unsigned char i, j, k;
	unsigned char status;
	unsigned char buf[64];
	unsigned char bufserialNo[32];
	char *pstr;
	usb_deviceRequest_t desc_dev;
	usbhost_ioctl_cb_t hc_iocb;
	usb_deviceDescriptor_t hc_iocb_descriptor;
	usb_deviceStringDescriptor_t *string;

	char *start1Msg = "\n\nDevice Descriptors:\n";
	char *bcdUSBMsg = " bcdUSB:                   %x\n";
	char *devClassMsg = " bDeviceClass:             %x\n";
	char *subClassMsg = " bDeviceSubClass:          %x\n";
	char *devProtMsg = " bDeviceProtocol:          %x\n";
	char *packSizeMsg = " bMaxPacketSize0:          %x\n";
	char *vidMsg = " VID:                      %x\n";
	char *pidMsg = " PID:                      %x\n";
	char *bcdMsg = " bcdDevice:                %x\n\n";
	char *manfMsg = " iManufacturer:            %s\n";
	char *productMsg = " iProduct:                 %s\n";
	char *serialMsg = " iSerialNumber:            %s\n";

	desc_dev.bmRequestType = USB_BMREQUESTTYPE_DEV_TO_HOST |
		USB_BMREQUESTTYPE_STANDARD |
		USB_BMREQUESTTYPE_DEVICE;

	desc_dev.bRequest = USB_REQUEST_CODE_GET_DESCRIPTOR;

	// Device descriptors
	desc_dev.wValue = (USB_DESCRIPTOR_TYPE_DEVICE << 8) | 0x00;
	desc_dev.wIndex = 0x0000;
	desc_dev.wLength = 0x0012;

	hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;

	hc_iocb.handle.ep = epHandle;
	hc_iocb.set = &desc_dev;
	hc_iocb.get = &hc_iocb_descriptor;

	status = vos_dev_ioctl(hUsb1, &hc_iocb);

	// device descriptors
	printf(start1Msg);
	printf(bcdUSBMsg, hc_iocb_descriptor.bcdUSB);
	printf(devClassMsg, hc_iocb_descriptor.bDeviceClass);
	printf(subClassMsg, hc_iocb_descriptor.bDeviceSubclass);
	printf(devProtMsg, hc_iocb_descriptor.bDeviceProtocol);
	printf(packSizeMsg, hc_iocb_descriptor.bMaxPacketSize0);
	printf(vidMsg, hc_iocb_descriptor.idVendor);
	printf(pidMsg, hc_iocb_descriptor.idProduct);
	printf(bcdMsg, hc_iocb_descriptor.bcdDevice);

	// Device String Descriptors
	// manufacturer
	if (hc_iocb_descriptor.iManufacturer != 0)
	{
		desc_dev.wValue = (USB_DESCRIPTOR_TYPE_STRING << 8) | hc_iocb_descriptor.iManufacturer;
		desc_dev.wIndex = USB_LANGID_ENGLISH_UNITED_STATES;
		desc_dev.wLength = sizeof(buf); // max 64

		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;

		hc_iocb.handle.ep = epHandle;
		hc_iocb.set = &desc_dev;
		hc_iocb.get = buf;

		status = vos_dev_ioctl(hUsb1, &hc_iocb);
		string = buf;
		// points to the contents (bString) of the structure usb_deviceStringDescriptor_t
		pstr = &string->bString;

		// remove the header and strip high byte from unicode
		for (i = 0; (i < (string->bLength - 2) / 2) && (i < 32); i++)
		{
			bufserialNo[i] = *pstr;
			pstr += 2;
		}

		bufserialNo[i++] = '\0';
		printf(manfMsg, bufserialNo);
	}
	else
	{
		printf(manfMsg, "No manufacturer string");
	}

	// product
	if (hc_iocb_descriptor.iProduct != 0)
	{
		desc_dev.wValue = (USB_DESCRIPTOR_TYPE_STRING << 8) | hc_iocb_descriptor.iProduct;
		desc_dev.wIndex = USB_LANGID_ENGLISH_UNITED_STATES;
		desc_dev.wLength = sizeof(buf); // max 64

		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;

		hc_iocb.handle.ep = epHandle;
		hc_iocb.set = &desc_dev;
		hc_iocb.get = buf;

		status = vos_dev_ioctl(hUsb1, &hc_iocb);

		string = buf;
		// points to the contents (bString) of the structure usb_deviceStringDescriptor_t
		pstr = &string->bString;

		// remove the header and strip high byte from unicode
		for (i = 0; (i < (string->bLength - 2) / 2) && (i < 32); i++)
		{
			bufserialNo[i] = *pstr;
			pstr += 2;
		}

		bufserialNo[i++] = '\0';
		printf(productMsg, bufserialNo);
	}
	else
	{
		printf(productMsg, "No product string");
	}

	// serial
	if (hc_iocb_descriptor.iSerialNumber != 0)
	{
		desc_dev.wValue = (USB_DESCRIPTOR_TYPE_STRING << 8) | hc_iocb_descriptor.iSerialNumber;
		desc_dev.wIndex = USB_LANGID_ENGLISH_UNITED_STATES;
		desc_dev.wLength = sizeof(buf); // max 64

		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;

		hc_iocb.handle.ep = epHandle;
		hc_iocb.set = &desc_dev;
		hc_iocb.get = buf;             // kwa serial number

		status = vos_dev_ioctl(hUsb1, &hc_iocb);

		string = buf;
		// points to the contents (bString) of the structure usb_deviceStringDescriptor_t
		pstr = &string->bString;

		// remove the header and strip high byte from unicode
		for (i = 0; (i < (string->bLength - 2) / 2) && (i < 32); i++)
		{
			bufserialNo[i] = *pstr;
			pstr += 2;
		}

		bufserialNo[i++] = '\0';
		printf(serialMsg, bufserialNo);
	}
	else
	{
		printf(serialMsg, "No serial number string");
	}
}

