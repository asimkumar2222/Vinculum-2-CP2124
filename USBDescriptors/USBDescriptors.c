/*
** Filename: USBDescriptors.c
**
** Automatically created by Application Wizard 1.4.2
**
** Part of solution USBDescriptors in project USBDescriptors
**
** Comments:
**
** Important: Sections between markers "FTDI:S*" and "FTDI:E*" will be overwritten by
** the Application Wizard
*/

#include "USBDescriptors.h"

#include "GetDeviceDescp.h"
#include "GetConfigDescp.h"
#include "GetHubDescp.h"

/* FTDI:STP Thread Prototypes */
vos_tcb_t *tcbFIRMWARE;

void firmware();
/* FTDI:ETP */

/* FTDI:SDH Driver Handles */
VOS_HANDLE hUSBHOST_1;                 // USB Host Port 1
VOS_HANDLE hUSBHOST_2;                 // USB Host Port 2
VOS_HANDLE hUART;                      // UART Interface Driver
/* FTDI:EDH */

/* Declaration for IOMUx setup function */
void iomux_setup(void);

/* Main code - entry point to firmware */
void main(void)
{
	/* FTDI:SDD Driver Declarations */
	// UART Driver configuration context
	uart_context_t uartContext;
	// USB Host configuration context
	usbhost_context_t usbhostContext;

	/* FTDI:EDD */

	/* FTDI:SKI Kernel Initialisation */
	vos_init(50, VOS_TICK_INTERVAL, VOS_NUMBER_DEVICES);
	vos_set_clock_frequency(VOS_48MHZ_CLOCK_FREQUENCY);
	vos_set_idle_thread_tcb_size(512);
	/* FTDI:EKI */

	iomux_setup();

	/* FTDI:SDI Driver Initialisation */
	// Initialise UART
	uartContext.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	uart_init(VOS_DEV_UART, &uartContext);

	// Initialise USB Host
	usbhostContext.if_count = 8;
	usbhostContext.ep_count = 16;
	usbhostContext.xfer_count = 2;
	usbhostContext.iso_xfer_count = 2;
	usbhost_init(VOS_DEV_USBHOST_1, VOS_DEV_USBHOST_2, &usbhostContext);
	/* FTDI:EDI */

	/* FTDI:SCT Thread Creation */
	tcbFIRMWARE = vos_create_thread_ex(20, 4096, firmware, "Application", 0);
	/* FTDI:ECT */

	vos_start_scheduler();

main_loop:
	goto main_loop;
}

/* FTDI:SSP Support Functions */

unsigned char usbhost_connect_state(VOS_HANDLE hUSB)
{
	unsigned char connectstate = PORT_STATE_DISCONNECTED;
	usbhost_ioctl_cb_t hc_iocb;

	if (hUSB)
	{
		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_GET_CONNECT_STATE;
		hc_iocb.get = &connectstate;
		vos_dev_ioctl(hUSB, &hc_iocb);

		// repeat if connected to see if we move to enumerated
		if (connectstate == PORT_STATE_CONNECTED)
		{
			vos_dev_ioctl(hUSB, &hc_iocb);
		}
	}

	return connectstate;
}

/* FTDI:ESP */

void open_drivers(void)
{
	/* Code for opening and closing drivers - move to required places in Application Threads */
	/* FTDI:SDA Driver Open */
	hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);
	hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);
	hUART = vos_dev_open(VOS_DEV_UART);
	/* FTDI:EDA */
}

void attach_drivers(void)
{
	/* FTDI:SUA Layered Driver Attach Function Calls */
	// TODO attach stdio to file system and stdio interface
	// fsAttach(hFAT_FILE_SYSTEM); // VOS_HANDLE for file system (typically FAT)
	// stdioAttach(hUART); // VOS_HANDLE for stdio interface (typically UART)
	/* FTDI:EUA */
}

void close_drivers(void)
{
	/* FTDI:SDB Driver Close */
	vos_dev_close(hUSBHOST_1);
	vos_dev_close(hUSBHOST_2);
	vos_dev_close(hUART);
	/* FTDI:EDB */
}

char getDescriptors(VOS_HANDLE hUsb)
{
	unsigned char hostState;
	unsigned char status;
	usbhost_device_handle_ex ifDev;
	usbhost_ioctl_cb_t hc_iocb;
	usbhost_ep_handle_ex epHandle;     // Handle to our endpoint.
	unsigned char devClass = 0;

	hostState = usbhost_connect_state(hUsb);

	if (hostState == PORT_STATE_ENUMERATED)
	{
		ifDev = NULL;

		do
		{
			// user ioctl to find first hub device
			hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_GET_NEXT_HANDLE;
			hc_iocb.handle.dif = ifDev;
			hc_iocb.set = NULL;
			hc_iocb.get = &ifDev;

			if (vos_dev_ioctl(hUsb, &hc_iocb) == USBHOST_OK)
			{
				epHandle = NULL;
				hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_GET_CONTROL_ENDPOINT_HANDLE;
				hc_iocb.handle.dif = ifDev;
				hc_iocb.get = &epHandle;
				status = vos_dev_ioctl(hUsb, &hc_iocb);

				if (status != USBHOST_OK)
				{
					return hostState;
				}

				// read device descriptors
				getDeviceDescp(hUsb, epHandle);

				// read configuration descriptor
				getConfigDescp(hUsb, epHandle);
			}
			else
			{
				break;
			}
		}
		while (ifDev);
	}

	return hostState;
}

void firmware(void)
{
	common_ioctl_cb_t uart_iocb;
	char i;
	char done;

	open_drivers();

	/* UART ioctl call to enable DMA and link to DMA driver */
	uart_iocb.ioctl_code = VOS_IOCTL_COMMON_ENABLE_DMA;
	uart_iocb.set.param = DMA_ACQUIRE_AS_REQUIRED;
	vos_dev_ioctl(hUART, &uart_iocb);

	// Use stdio library and attach it to the UART interface
	stdioAttach(hUART);

	do
	{
		printf("\nPress 1 or 2 for USB Port Descriptors\n");
		// wait for user to press key
		vos_dev_read(hUART, (unsigned char *) &i, 1, NULL);

		// display descriptors for each USB Host port
		if (i == '1')
			done = getDescriptors(hUSBHOST_1);
		else if (i == '2')
			done = getDescriptors(hUSBHOST_2);
		else
		{
			printf("Invalid selection \"%c\"\n", i);
			continue;
		}

		if (done != PORT_STATE_ENUMERATED)
		{
			printf("Port %c not ready\n", i);
		}
	}
	while (1);
}

