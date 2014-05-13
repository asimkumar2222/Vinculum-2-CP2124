

#include "vos.h"

#include "USBHost.h"
#include "USB.h"

#include "string.h"

#include "USBHostGenericDrv.h"

#define IFC_ENABLE 0X00
#define SET_BAUDDIV 0X01
#define GET_BAUDDIV 0X02
#define SET_LINE_CTL 0X03
#define GET_LINE_CONTROL 0X04
#define GET_BAUDRATE 0X1D
#define SET_BAUDRATE 0X1E

vos_driver_t usbhostGeneric_cb;

// open function
void usbhostGeneric_open();

// close function
void usbhostGeneric_close();

// read function
unsigned char usbhostGeneric_read(
	char *xfer,
	unsigned short num_to_read,
	unsigned short *num_read,
	usbhostGeneric_context_t *ctx);

// write function
unsigned char usbhostGeneric_write(
	char *xfer,
	unsigned short num_to_write,
	unsigned short *num_written,
	usbhostGeneric_context_t *ctx);

// USB Host IOCTL function
unsigned char usbhostGeneric_ioctl(usbhostGeneric_ioctl_t *cb,
								   usbhostGeneric_context_t *ctx);

unsigned char usbhostGeneric_init(unsigned char vos_dev_num)
{
	usbhostGeneric_context_t *ctx;

	ctx = vos_malloc(sizeof(usbhostGeneric_context_t));
	memset(ctx, 0, sizeof(usbhostGeneric_context_t));

	// Set up function pointers for our driver
	usbhostGeneric_cb.flags = 0;
	usbhostGeneric_cb.read = usbhostGeneric_read;
	usbhostGeneric_cb.write = usbhostGeneric_write;
	usbhostGeneric_cb.ioctl = usbhostGeneric_ioctl;
	usbhostGeneric_cb.interrupt = (PF_INT) NULL;
	usbhostGeneric_cb.open = usbhostGeneric_open;
	usbhostGeneric_cb.close = usbhostGeneric_close;

	// OK - register with device manager
	vos_dev_init(vos_dev_num, &usbhostGeneric_cb, ctx);

	return USBHOSTGENERIC_OK;
}

// open function
void usbhostGeneric_open()
{
}

// close function
void usbhostGeneric_close()
{
}

// USBHOSTGeneric read function
unsigned char usbhostGeneric_read(char *buf,
								  unsigned short num_to_read,
								  unsigned short *num_read,
								  usbhostGeneric_context_t *ctx)
{
	unsigned short actual_read = 0;
	unsigned char status = USBHOSTGENERIC_NOT_FOUND;
	usbhost_xfer_t xfer;
	vos_semaphore_t s;

	if (ctx->hc)
	{
		vos_init_semaphore(&s, 0);

		vos_memset(&xfer, 0, sizeof(usbhost_xfer_t));
		xfer.buf = buf;
		xfer.len = num_to_read;
		xfer.ep = ctx->epBulkIn;
		xfer.s = &s;
		xfer.cond_code = USBHOST_CC_NOTACCESSED;
		xfer.flags = USBHOST_XFER_FLAG_START_BULK_ENDPOINT_LIST | USBHOST_XFER_FLAG_ROUNDING;

		status = vos_dev_read(ctx->hc, (unsigned char *) &xfer, sizeof(usbhost_xfer_t), NULL);

		if (status == USBHOST_OK)
		{
			status = USBHOSTGENERIC_OK;
			actual_read = xfer.len;
		}
		else
		{
			status |= USBHOSTGENERIC_USBHOST_ERROR;
		}
	}

	if (num_read)
	{
		*num_read = actual_read;
	}

	return status;
}

// USBHOSTGeneric write function
unsigned char usbhostGeneric_write(char *buf,
								   unsigned short num_to_write,
								   unsigned short *num_written,
								   usbhostGeneric_context_t *ctx)
{
	unsigned short actual_write = 0;
	unsigned char status = USBHOSTGENERIC_NOT_FOUND;
	usbhost_xfer_t xfer;
	vos_semaphore_t s;

	if (ctx->hc)
	{
		vos_memset(&xfer, 0, sizeof(usbhost_xfer_t));
		vos_init_semaphore(&s, 0);

		xfer.buf = buf;
		xfer.len = num_to_write;
		xfer.ep = ctx->epBulkOut;
		xfer.s = &s;
		xfer.cond_code = USBHOST_CC_NOTACCESSED;
		xfer.flags = USBHOST_XFER_FLAG_START_BULK_ENDPOINT_LIST;
		status = vos_dev_write(ctx->hc, (unsigned char *) &xfer, sizeof(usbhost_xfer_t), NULL);

		if (status == USBHOST_OK)
		{
			status = USBHOSTGENERIC_OK;
			actual_write = xfer.len;
		}
		else
		{
			status |= USBHOSTGENERIC_USBHOST_ERROR;
		}
	}

	if (num_written)
	{
		*num_written = actual_write;
	}

	return status;
}

// SETUP for IOCTL call
unsigned char usbhostGeneric_ioctl_setup(usbhostGeneric_ioctl_t *cb, usbhostGeneric_context_t *ctx)
{
	// USBHost IOCTL structure
	usbhost_ioctl_cb_t hc_ioctl;
	// setup transfer descriptor
	usb_deviceRequest_t desc_dev;
	unsigned char buf[2];
	unsigned char status;

	// setup Generic device
	///*
	desc_dev.bmRequestType = USB_BMREQUESTTYPE_DEV_TO_HOST |
		USB_BMREQUESTTYPE_STANDARD |
		USB_BMREQUESTTYPE_DEVICE;
	desc_dev.bRequest = USB_REQUEST_CODE_GET_STATUS;
	desc_dev.wValue = 0;
	desc_dev.wIndex = 0;
	desc_dev.wLength = 2;

	hc_ioctl.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;
	hc_ioctl.handle.ep = ctx->epCtrl;
	hc_ioctl.set = &desc_dev;
	hc_ioctl.get = buf;
	
	status = vos_dev_ioctl(ctx->hc, &hc_ioctl);

	if (status == USBHOST_OK)
	{
		// return status low byte to caller
		cb->get.data = buf[0];
		return USBHOSTGENERIC_OK;
	}

	return status | USBHOSTGENERIC_USBHOST_ERROR;
}
/////////////////////asim/////////////////////////////////////////////////////////////////
	
// SETUP-2 (IFC_ENABLE & BAUDRATE CONFIGURATION) for IOCTL call
	
unsigned char usbhostGeneric_ioctl_enable(usbhostGeneric_ioctl_t *cb, usbhostGeneric_context_t *ctx)
{
	// USBHost IOCTL structure
	usbhost_ioctl_cb_t hc_ioctl;
	// setup transfer descriptor
	usb_deviceRequest_t desc_dev;
	unsigned char buf[2];
	unsigned char status;

	// setup Generic device
	
	desc_dev.bmRequestType = 0x41;
	desc_dev.bRequest = IFC_ENABLE;//0xFE; /////IFC_ENABLE;
	desc_dev.wValue = 0;
	desc_dev.wIndex = 0;
	desc_dev.wLength = 2;

	hc_ioctl.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;
	hc_ioctl.handle.ep = ctx->epCtrl;
	hc_ioctl.set = &desc_dev;
	hc_ioctl.get = buf;
	
	/////////////////////////////////

	status = vos_dev_ioctl(ctx->hc, &hc_ioctl);

	if (status == USBHOST_OK)
	{
		// return status low byte to caller
		cb->get.data = buf[0];
		return 0xED;//USBHOSTGENERIC_OK;
	}
return 0xED;
	//return status | USBHOSTGENERIC_USBHOST_ERROR;
}
	
	
	
/////////////////////asim////////////////////////////////////////////////////////////////
	
// attach for IOCTL call
unsigned char usbhostGeneric_attach(usbhostGeneric_ioctl_t *cb, usbhostGeneric_context_t *ctx)
{
	usbhostGeneric_ioctl_cb_attach_t *atInfo;
	// ioctl request block
	usbhost_ioctl_cb_t hc_ioctl;
	unsigned char status = USBHOSTGENERIC_INVALID_PARAMETER;

	atInfo = cb->set.data;
	ctx->hc = atInfo->hc_handle;

	// TODO: check VID/PID here or other Generic identifier
	do
	{
		// user ioctl to find control endpoint on this device
		hc_ioctl.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_GET_CONTROL_ENDPOINT_HANDLE;
		hc_ioctl.handle.dif = atInfo->ifDev;
		hc_ioctl.get = &ctx->epCtrl;

		if (vos_dev_ioctl(ctx->hc, &hc_ioctl) != USBHOST_OK)
		{
			status = USBHOSTGENERIC_NOT_FOUND;
			break;
		}

		// user ioctl to find bulk endpoint on this device
		hc_ioctl.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_GET_BULK_IN_ENDPOINT_HANDLE;
		hc_ioctl.handle.dif = atInfo->ifDev;
		hc_ioctl.get = &ctx->epBulkIn;

		if (vos_dev_ioctl(ctx->hc, &hc_ioctl) != USBHOST_OK)
		{
			status = USBHOSTGENERIC_NOT_FOUND;
			break;
		}

		// user ioctl to find bulk endpoint on this device
		hc_ioctl.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_GET_BULK_OUT_ENDPOINT_HANDLE;
		hc_ioctl.handle.dif = atInfo->ifDev;
		hc_ioctl.get = &ctx->epBulkOut;

		if (vos_dev_ioctl(ctx->hc, &hc_ioctl) != USBHOST_OK)
		{
			status = USBHOSTGENERIC_NOT_FOUND;
			break;
		}

		status = USBHOSTGENERIC_OK;
	}
	while (0);

	return status;
}

// detach for IOCTL call
void usbhostGeneric_detach(usbhostGeneric_context_t *ctx)
{
	// remove link to host controller and endpoints
	ctx->hc = NULL;
	ctx->epCtrl = NULL;
	ctx->epBulkIn = NULL;
	ctx->epBulkOut = NULL;
}

// USBHOSTGeneric IOCTL function
unsigned char usbhostGeneric_ioctl(usbhostGeneric_ioctl_t *cb, usbhostGeneric_context_t *ctx)
{
	unsigned char status = USBHOSTGENERIC_INVALID_PARAMETER;
status =0x03;
	switch (cb->ioctl_code)
	{
	case VOS_IOCTL_USBHOSTGENERIC_IFC_ENABLE:
		status = usbhostGeneric_ioctl_enable(cb, ctx);
		status= 0x02;
		break;
		
	case VOS_IOCTL_USBHOSTGENERIC_STATUS:
		status = usbhostGeneric_ioctl_setup(cb, ctx);
		break;

	case VOS_IOCTL_USBHOSTGENERIC_ATTACH:
		status = usbhostGeneric_attach(cb, ctx);
		break;

	case VOS_IOCTL_USBHOSTGENERIC_DETACH:
		usbhostGeneric_detach(ctx);
		status = USBHOSTGENERIC_OK;
		break;
		
	case VOS_IOCTL_USBHOSTGENERIC_IFC:
		//status = usbhostGeneric_ioctl_enable(cb, ctx);
		status= 0x03;
		return 0x03;
		break;

	default: return 0x03;
		break;
	}

	return status;
}

