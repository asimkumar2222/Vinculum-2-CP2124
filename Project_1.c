/*
** Filename: Project_1.c
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

#include "Project_1.h"
#include "USBHostGenericDrv.h"
/* FTDI:STP Thread Prototypes */
vos_tcb_t *tcbFIRMWARE;
vos_tcb_t *tcbTHREAD_1;
vos_tcb_t *tcbTHREAD_2;

void firmware();
void thread_1();
void thread_2();
/* FTDI:ETP */

/* FTDI:SDH Driver Handles */
VOS_HANDLE hUSBHOST_1; // USB Host Port 1
VOS_HANDLE hUSBHOST_2; // USB Host Port 2
VOS_HANDLE hUART; // UART Interface Driver
VOS_HANDLE hGPIO_PORT_A; // GPIO Port A Driver

/* FTDI:EDH */
VOS_HANDLE hUSBHOSTGENERIC;            // USB Host Generic Driver (Additional Device)
/* Declaration for IOMUx setup function */
void iomux_setup(void);
char as=0xFF;
char *ram="dam";
/* Main code - entry point to firmware */
void main(void)
{   
	/* FTDI:SDD Driver Declarations */
	// UART Driver configuration context
	uart_context_t uartContext;
	// GPIO Port A configuration context
	gpio_context_t gpioContextA;
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
	uart_init(VOS_DEV_UART,&uartContext);
	
	// Initialise GPIO A
	gpioContextA.port_identifier = GPIO_PORT_A;
	gpio_init(VOS_DEV_GPIO_PORT_A,&gpioContextA);
	
	
	// Initialise USB Host
	usbhostContext.if_count = 8;
	usbhostContext.ep_count = 16;
	usbhostContext.xfer_count = 2;
	usbhostContext.iso_xfer_count = 2;
	usbhost_init(VOS_DEV_USBHOST_1, VOS_DEV_USBHOST_2, &usbhostContext);
	/* FTDI:EDI */
	
		usbhostGeneric_init(VOS_DEV_USBHOSTGENERIC);

	/* FTDI:SCT Thread Creation */
	tcbFIRMWARE = vos_create_thread_ex(20, 4096, firmware, "Application", 0);
	tcbTHREAD_1 = vos_create_thread_ex(24, 1024, thread_1, "Thread_1", 0);
	tcbTHREAD_2 = vos_create_thread_ex(24, 1024, thread_2, "Thread_2", 0);
	/* FTDI:ECT */

	//hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
	//open_drivers();
	//vos_gpio_set_port_mode(GPIO_PORT_A,0xFF);
	//vos_gpio_write_port(GPIO_PORT_A,0xFF);
	
	vos_start_scheduler();

main_loop:
	
	
	goto main_loop;
}
	
	
	
void setbaud(usbhostGeneric_ioctl_t *cb,usbhostGeneric_context_t *ctx)  //usbhostGeneric_ioctl_t *cb,
	{
		// USBHost IOCTL structure
	usbhost_ioctl_cb_t hc_ioctl;
	// setup transfer descriptor
	usb_deviceRequest_t desc_dev;
	unsigned char buf[2];
	unsigned char status;
		
	desc_dev.bmRequestType = 0x41;
	desc_dev.bRequest = 0X00; //IFC_ENABLE
	desc_dev.wValue = 0;
	desc_dev.wIndex = 0;
	desc_dev.wLength = 2;

	hc_ioctl.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_SETUP_TRANSFER;
	hc_ioctl.handle.ep = ctx->epCtrl;
	hc_ioctl.set = &desc_dev;
	hc_ioctl.get = buf;
	
	status = vos_dev_ioctl(ctx->hc, &hc_ioctl);
	
	//vos_dev_ioctl(hUSBHOSTGENERIC, &generic_iocb)
	}
	
	
	

/* FTDI:SSP Support Functions */

unsigned char usbhost_connect_state(VOS_HANDLE hUSB)
{
	unsigned char connectstate = PORT_STATE_DISCONNECTED;
	usbhost_ioctl_cb_t hc_iocb;

	if (hUSB)
	{
		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_GET_CONNECT_STATE;
		hc_iocb.get        = &connectstate;
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
        hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
        /* FTDI:EDA */
}

void attach_drivers(void)
{
        /* FTDI:SUA Layered Driver Attach Function Calls */
        /* FTDI:EUA */
}

void close_drivers(void)
{
        /* FTDI:SDB Driver Close */
        vos_dev_close(hUSBHOST_1);
        vos_dev_close(hUSBHOST_2);
        vos_dev_close(hUART);
        vos_dev_close(hGPIO_PORT_A);
        /* FTDI:EDB */
}

/* Application Threads */

void firmware()
{
	/* Thread code to be added here */
	
	unsigned char i;
	unsigned char status, status2;
	unsigned char buf[64];
	unsigned short num_read;
	unsigned int handle;
	char *startMsg = "Started\r\n";
	char *foundMsg = "Found\r\n";
	char *vidMsg = "VID: ";
	char *pidMsg = "PID: ";
	char *crMsg = "\r\n";
	common_ioctl_cb_t uart_iocb;
	//usbhostGeneric_ioctl_t generic_iocb;
	//usbhostGeneric_ioctl_cb_attach_t genericAtt;
	usbhost_device_handle_ex ifDev;
	usbhost_ioctl_cb_t hc_iocb;
	usbhost_ioctl_cb_vid_pid_t hc_iocb_vid_pid;
	
	usbhostGeneric_ioctl_t generic_iocb;
	usbhostGeneric_ioctl_cb_attach_t genericAtt;
	//asim
	usb_deviceRequest_t desc_dev;
	usbhost_ioctl_cb_t hc_ioctl;

	open_drivers();

	/* UART ioctl call to enable DMA and link to DMA driver */
	uart_iocb.ioctl_code = VOS_IOCTL_COMMON_ENABLE_DMA;
	vos_dev_ioctl(hUART, &uart_iocb);
	
	
	hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
	vos_gpio_set_port_mode(GPIO_PORT_A,0xFF);
	/////////////////////////////////////////////////////////////////////////////////////
	
	do
	{
		// see if bus available
		if (usbhost_connect_state(hUSBHOST_2) == PORT_STATE_ENUMERATED)  //hUSBHOST_1
		{
			/*	
						
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			
			vos_gpio_write_port(GPIO_PORT_A,0xFF);			
				
			vos_delay_msecs(250);
			*/
			
			
			
			// user ioctl to find first hub device
			hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_GET_NEXT_HANDLE;
			hc_iocb.handle.dif = NULL;
			hc_iocb.set = NULL;
			hc_iocb.get = &ifDev;
			if (vos_dev_ioctl(hUSBHOST_2, &hc_iocb) == USBHOST_OK)
			{
		/*
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(380);
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(380);
			vos_gpio_write_port(GPIO_PORT_A,0x00);
		*/	
			
			/////////////////'''''''''''''''''''''////////////////////////
			
			hUSBHOSTGENERIC = vos_dev_open(VOS_DEV_USBHOSTGENERIC);

				genericAtt.hc_handle = hUSBHOST_2;
				genericAtt.ifDev = ifDev;

				generic_iocb.ioctl_code = VOS_IOCTL_USBHOSTGENERIC_ATTACH;
				generic_iocb.set.att = &genericAtt;
			
				if (vos_dev_ioctl(hUSBHOSTGENERIC, &generic_iocb) == USBHOSTGENERIC_OK)
				{
					while (1)
					{
						genericAtt.hc_handle = hUSBHOST_2;
						//genericAtt.ifDev = ifDev;

						generic_iocb.ioctl_code = VOS_IOCTL_USBHOSTGENERIC_IFC;
						//generic_iocb.ioctl_code = VOS_IOCTL_USBHOSTGENERIC_IFC_ENABLE;
						//generic_iocb.set.att = &genericAtt;

						
						status2=0x03;
						status2 = vos_dev_ioctl(hUSBHOSTGENERIC, &generic_iocb);//, &generic_iocb
						//status=34;	
						if (status2 ==0x00 )   //0xED   USBHOSTGENERIC_OK
						{
							while(0)
							{
								vos_gpio_write_port(GPIO_PORT_A,0xFF);
								vos_delay_msecs(380);
								vos_gpio_write_port(GPIO_PORT_A,0x00);
								vos_delay_msecs(80);
								vos_gpio_write_port(GPIO_PORT_A,0xFF);
								vos_delay_msecs(380);
								vos_gpio_write_port(GPIO_PORT_A,0x00);
							}
							
							//////////////////asim 2013//////////////
							while (1)
							{
								if (vos_dev_read(hUSBHOSTGENERIC, buf, 64, &num_read) == USBHOSTGENERIC_OK)
								{
							//	vos_dev_write(hUART, buf, num_read, NULL);
								}
								else
								{
								break;
								}
							}
			
							/////////////////asim 2013/////////////
							
						}
							
							
							
							
							
							
							
							//setbaud(hUSBHOSTGENERIC, &generic_iocb);
							/*
						vos_gpio_write_port(GPIO_PORT_A,0xFF);
						vos_delay_msecs(380);
						vos_gpio_write_port(GPIO_PORT_A,0x00);
						vos_delay_msecs(80);
						vos_gpio_write_port(GPIO_PORT_A,0xFF);
						vos_delay_msecs(380);
						vos_gpio_write_port(GPIO_PORT_A,0x00);
						*/
						}
					/*
						
						*/
					

					;
				}
				

				vos_dev_close(hUSBHOSTGENERIC);
			
			
			////////////////''''''''''''''''''''''/////////////////////////
			
			
			//vos_delay_msecs(580);
			}
			
			
			/*
			as^=0xFF;	
			vos_gpio_write_port(GPIO_PORT_A,as);
			vos_delay_msecs(180); 
			as^=0xFF;	
			vos_gpio_write_port(GPIO_PORT_A,as);
			vos_delay_msecs(180);
			as^=0xFF;	
			vos_gpio_write_port(GPIO_PORT_A,as);
			vos_delay_msecs(180);
			as^=0xFF;	
			vos_gpio_write_port(GPIO_PORT_A,as);
			vos_delay_msecs(180);
			
			*/
		}
		else if(usbhost_connect_state(hUSBHOST_2) == PORT_STATE_CONNECTED)
		{
			////PORT_STATE_DISCONNECTED    PORT_STATE_CONNECTED
			/*	
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			
			vos_delay_msecs(250);
			*/
			
		}
		else if(usbhost_connect_state(hUSBHOST_2) == PORT_STATE_DISCONNECTED)
		
		{
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			/*
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			vos_delay_msecs(80);
			
			
			
			vos_gpio_write_port(GPIO_PORT_A,0xFF);
			vos_delay_msecs(120); 			
			vos_gpio_write_port(GPIO_PORT_A,0x00);
			
			vos_delay_msecs(250);
			*/
			
		}
		
	}
	while (1);
	
	
	
	////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	while(0)
	{
	as^=0xFF;	
	vos_gpio_write_port(GPIO_PORT_A,as);
	vos_delay_msecs(225);
	}
}

void thread_1()
{
	while(0)
	{
	/* Thread code to be added here */
	/*
	as^=0xFF;	
	vos_gpio_write_port(GPIO_PORT_A,as);
	vos_delay_msecs(125);
	as^=0xFF;	
	vos_gpio_write_port(GPIO_PORT_A,as);
	vos_delay_msecs(125);*/
	as^=0xFF;	
	
	vos_gpio_write_port(GPIO_PORT_A,as);
	vos_delay_msecs(225);   
	}

}

	
	
	
void thread_2()
{
	/* Thread code to be added here */
while(0)
	{
	
	as^=0xFF;	
	
	vos_gpio_write_port(GPIO_PORT_A,as);
	vos_delay_msecs(225);   
	}

}

