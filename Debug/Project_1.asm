.FILE "Debug\Project_1.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
as	.DB	1	255
.GLOBAL	  DO_NOT_EXPORT "as"
ram	.DB	2	str@ram
str@ram	.ASCIIZ	"dam"
.GLOBAL	  DO_NOT_EXPORT "ram"
hUSBHOSTGENERIC	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOSTGENERIC"
hUART	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUART"
hUSBHOST_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_1"
hUSBHOST_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_2"
tcbTHREAD_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbTHREAD_1"
tcbTHREAD_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbTHREAD_2"
tcbFIRMWARE	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbFIRMWARE"
hGPIO_PORT_A	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hGPIO_PORT_A"
Str@0	.ASCIIZ	"Application"
Str@1	.ASCIIZ	"Thread_1"
Str@2	.ASCIIZ	"Thread_2"
Str@4	.ASCIIZ	"Started\r\n"
Str@5	.ASCIIZ	"Found\r\n"
Str@6	.ASCIIZ	"VID: "
Str@7	.ASCIIZ	"PID: "
Str@8	.ASCIIZ	"\r\n"


.ENUM	"IOMUX_SIGNALS"
.ENUMERATOR	"IOMUX_IN_DEBUGGER"	0
.ENUMERATOR	"IOMUX_IN_UART_RXD"	1
.ENUMERATOR	"IOMUX_IN_UART_CTS_N"	2
.ENUMERATOR	"IOMUX_IN_UART_DSR_N"	3
.ENUMERATOR	"IOMUX_IN_UART_DCD"	4
.ENUMERATOR	"IOMUX_IN_UART_RI"	5
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_0"	6
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_1"	7
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_2"	8
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_3"	9
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_4"	10
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_5"	11
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_6"	12
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_7"	13
.ENUMERATOR	"IOMUX_IN_FIFO_OE_N"	14
.ENUMERATOR	"IOMUX_IN_FIFO_RD_N"	15
.ENUMERATOR	"IOMUX_IN_FIFO_WR_N"	16
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CLK"	17
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_MOSI"	18
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CS"	19
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CLK"	20
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_MOSI"	21
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CS"	22
.ENUMERATOR	"IOMUX_IN_SPI_MASTER_MISO"	23
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_0"	24
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_1"	25
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_2"	26
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_3"	27
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_4"	28
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_5"	29
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_6"	30
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_7"	31
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_0"	32
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_1"	33
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_2"	34
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_3"	35
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_4"	36
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_5"	37
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_6"	38
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_7"	39
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_0"	40
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_1"	41
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_2"	42
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_3"	43
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_4"	44
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_5"	45
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_6"	46
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_7"	47
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_0"	48
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_1"	49
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_2"	50
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_3"	51
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_4"	52
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_5"	53
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_6"	54
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_7"	55
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_0"	56
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_1"	57
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_2"	58
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_3"	59
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_4"	60
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_5"	61
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_6"	62
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_7"	63
.ENUMERATOR	"IOMUX_OUT_DEBUGGER"	64
.ENUMERATOR	"IOMUX_OUT_UART_TXD"	65
.ENUMERATOR	"IOMUX_OUT_UART_RTS_N"	66
.ENUMERATOR	"IOMUX_OUT_UART_DTR_N"	67
.ENUMERATOR	"IOMUX_OUT_UART_TX_ACTIVE"	68
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_0"	69
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_1"	70
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_2"	71
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_3"	72
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_4"	73
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_5"	74
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_6"	75
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_7"	76
.ENUMERATOR	"IOMUX_OUT_FIFO_RXF_N"	77
.ENUMERATOR	"IOMUX_OUT_FIFO_TXE_N"	78
.ENUMERATOR	"IOMUX_OUT_PWM_0"	79
.ENUMERATOR	"IOMUX_OUT_PWM_1"	80
.ENUMERATOR	"IOMUX_OUT_PWM_2"	81
.ENUMERATOR	"IOMUX_OUT_PWM_3"	82
.ENUMERATOR	"IOMUX_OUT_PWM_4"	83
.ENUMERATOR	"IOMUX_OUT_PWM_5"	84
.ENUMERATOR	"IOMUX_OUT_PWM_6"	85
.ENUMERATOR	"IOMUX_OUT_PWM_7"	86
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MOSI"	87
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MISO"	88
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MOSI"	89
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MISO"	90
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CLK"	91
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_MOSI"	92
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_0"	93
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_1"	94
.ENUMERATOR	"IOMUX_OUT_FIFO_CLKOUT_245"	95
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_0"	96
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_1"	97
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_2"	98
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_3"	99
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_4"	100
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_5"	101
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_6"	102
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_7"	103
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_0"	104
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_1"	105
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_2"	106
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_3"	107
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_4"	108
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_5"	109
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_6"	110
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_7"	111
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_0"	112
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_1"	113
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_2"	114
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_3"	115
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_4"	116
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_5"	117
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_6"	118
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_7"	119
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_0"	120
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_1"	121
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_2"	122
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_3"	123
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_4"	124
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_5"	125
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_6"	126
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_7"	127
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_0"	128
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_1"	129
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_2"	130
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_3"	131
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_4"	132
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_5"	133
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_6"	134
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_7"	135
.ENUM_END	"IOMUX_SIGNALS"

.STRUCT	"_vos_tcb_t"	368
.STRUCTMEM	"next"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"orig_priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"quantum"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"delay"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"sp"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"eax"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ebx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ecx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r0"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r1"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r2"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r3"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"system_data"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"system_profiler"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"semaphore_list"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_tcb_t"

.STRUCT	"_usb_deviceRequest_t"	64
.STRUCTMEM	"bmRequestType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bRequest"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wValue"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wIndex"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wLength"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceRequest_t"

.ENUM	"dma_status"
.ENUMERATOR	"DMA_OK"	0
.ENUMERATOR	"DMA_INVALID_PARAMETER"	1
.ENUMERATOR	"DMA_ACQUIRE_ERROR"	2
.ENUMERATOR	"DMA_ENABLE_ERROR"	3
.ENUMERATOR	"DMA_DISABLE_ERROR"	4
.ENUMERATOR	"DMA_CONFIGURE_ERROR"	5
.ENUMERATOR	"DMA_ERROR"	6
.ENUMERATOR	"DMA_FIFO_ERROR"	7
.ENUM_END	"dma_status"

.STRUCT	"_usb_hubDescriptor_t"	312
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNbrPorts"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wHubCharacteristics"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bPwrOn2PwrGood"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bHubContrCurrent"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"DeviceRemovable"	"char"	128	0	0	0	1	1	0	
.STRUCTMEM	"PortPwrCtrlMask"	"char"	128	0	0	0	1	1	0	
.STRUCT_END	"_usb_hubDescriptor_t"

.STRUCT	"_usb_hubPortStatus_t"	32
.STRUCTMEM	"currentConnectStatus"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabled"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspend"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portReset"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPower"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTest"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicator"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"currentConnectStatusChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabledChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspendChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portResetChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv3"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPowerChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTestChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicatorChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv4"	"short"	3	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubPortStatus_t"

.ENUM	"USBHOST_STATUS"
.ENUMERATOR	"USBHOST_OK"	0
.ENUMERATOR	"USBHOST_NOT_FOUND"	1
.ENUMERATOR	"USBHOST_PENDING"	2
.ENUMERATOR	"USBHOST_INVALID_PARAMETER"	3
.ENUMERATOR	"USBHOST_INVALID_BUFFER"	4
.ENUMERATOR	"USBHOST_INCOMPLETE_ENUM"	5
.ENUMERATOR	"USBHOST_INVALID_CONFIGURATION"	6
.ENUMERATOR	"USBHOST_TD_FULL"	7
.ENUMERATOR	"USBHOST_EP_FULL"	8
.ENUMERATOR	"USBHOST_IF_FULL"	9
.ENUMERATOR	"USBHOST_EP_HALTED"	10
.ENUMERATOR	"USBHOST_EP_INVALID"	11
.ENUMERATOR	"USBHOST_INVALID_STATE"	12
.ENUMERATOR	"USBHOST_ERROR"	13
.ENUMERATOR	"USBHOST_CC_ERROR"	16
.ENUMERATOR	"USBHOST_FATAL_ERROR"	255
.ENUM_END	"USBHOST_STATUS"

.STRUCT	"_vos_gpio_t"	40
.STRUCTMEM	"gpio_port_a"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_b"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_c"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_d"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_e"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_gpio_t"

.STRUCT	"_usb_deviceEndpointDescriptor_t"	56
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bEndpointAddress"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wMaxPacketSize"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bInterval"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceEndpointDescriptor_t"

.STRUCT	"_vos_semaphore_list_t"	56
.STRUCTMEM	"next"	"_vos_semaphore_list_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"siz"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"result"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"list"	"_vos_semaphore_t"	16	0	1	0	1	1	1	
.STRUCT_END	"_vos_semaphore_list_t"

.STRUCT	"_usb_deviceInterfaceDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bAlternateSetting"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumEndpoints"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iInterface"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceInterfaceDescriptor_t"

.STRUCT	"_usb_deviceQualifierDescriptor_t"	80
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bReserved"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceQualifierDescriptor_t"

.STRUCT	"_vos_mutex_t"	48
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"owner"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"attr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ceiling"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_mutex_t"

.STRUCT	"_vos_device_t"	80
.STRUCTMEM	"mutex"	"_vos_mutex_t"	48	0	0	0	0	0	0	
.STRUCTMEM	"driver"	"_vos_driver_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"context"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_device_t"

.STRUCT	"_usbhostGeneric_ioctl_cb_attach_t"	48
.STRUCTMEM	"hc_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ifDev"	"int"	32	1	0	0	0	0	0	
.STRUCT_END	"_usbhostGeneric_ioctl_cb_attach_t"

.STRUCT	"_usb_deviceDescriptor_t"	144
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"idVendor"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"idProduct"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bcdDevice"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"iManufacturer"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iProduct"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iSerialNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceDescriptor_t"

.STRUCT	"_usbhostGeneric_ioctl_t"	40
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"set"	"__unnamed_struct_7"	16	0	0	0	0	0	0	
.STRUCTMEM	"get"	"__unnamed_struct_8"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhostGeneric_ioctl_t"

.STRUCT	"_vos_driver_t"	200
.STRUCTMEM	"open"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"close"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"read"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"write"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"ioctl"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"interrupt"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_driver_t"

.STRUCT	"_vos_system_data_area_t"	80
.STRUCTMEM	"next"	"_vos_system_data_area_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"tcb"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"count"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"name"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_vos_system_data_area_t"

.STRUCT	"_usb_deviceStringDescriptorZero_t"	32
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wLANGID0"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptorZero_t"

.STRUCT	"_vos_cond_var_t"	40
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"lock"	"_vos_mutex_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_cond_var_t"

.STRUCT	"_gpio_context_t"	8
.STRUCTMEM	"port_identifier"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_context_t"

.STRUCT	"_usbhost_ioctl_cb_class_t"	24
.STRUCTMEM	"dev_class"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_subclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_protocol"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_class_t"

.STRUCT	"_usbhost_xfer_t"	112
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"zero"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_t"

.STRUCT	"_uart_context_t"	8
.STRUCTMEM	"buffer_size"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_uart_context_t"

.STRUCT	"_usbhostGeneric_context_t"	112
.STRUCTMEM	"hc"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"epCtrl"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"epBulkIn"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"epBulkOut"	"int"	32	1	0	0	0	0	0	
.STRUCT_END	"_usbhostGeneric_context_t"

.ENUM	"gpioctrl_status"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PIN"	1
.ENUMERATOR	"GPIO_INVALID_PORT"	2
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	3
.ENUMERATOR	"GPIO_INVALID_INTERRUPT"	4
.ENUMERATOR	"GPIO_INVALID_INTERRUPT_TYPE"	5
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	6
.ENUMERATOR	"GPIO_ERROR"	7
.ENUM_END	"gpioctrl_status"

.ENUM	"USBHOSTGENERIC_STATUS"
.ENUMERATOR	"USBHOSTGENERIC_OK"	0
.ENUMERATOR	"USBHOSTGENERIC_INVALID_PARAMETER"	1
.ENUMERATOR	"USBHOSTGENERIC_ERROR"	2
.ENUMERATOR	"USBHOSTGENERIC_NOT_FOUND"	3
.ENUMERATOR	"USBHOSTGENERIC_USBHOST_ERROR"	128
.ENUM_END	"USBHOSTGENERIC_STATUS"

.STRUCT	"_gpio_ioctl_cb_t"	16
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"value"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_ioctl_cb_t"

.STRUCT	"_usb_hubStatus_t"	32
.STRUCTMEM	"localPowerSource"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	14	0	0	0	0	0	0	
.STRUCTMEM	"localPowerSourceChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	14	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubStatus_t"

.STRUCT	"_vos_semaphore_t"	40
.STRUCTMEM	"val"	"short"	16	1	0	0	0	0	0	
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"usage_count"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_vos_semaphore_t"

.STRUCT	"_usb_deviceConfigurationDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wTotalLength"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bNumInterfaces"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bConfigurationValue"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iConfiguration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPower"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceConfigurationDescriptor_t"

.STRUCT	"_vos_dma_config_t"	80
.STRUCTMEM	"src"	"__unnamed_struct_1"	16	0	0	0	0	0	0	
.STRUCTMEM	"dest"	"__unnamed_struct_2"	16	0	0	0	0	0	0	
.STRUCTMEM	"bufsiz"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"fifosize"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"flow_control"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"afull_trigger"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_dma_config_t"

.STRUCT	"_usbhost_ioctl_cb_vid_pid_t"	32
.STRUCTMEM	"vid"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"pid"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_vid_pid_t"

.STRUCT	"_usbhost_ioctl_cb_ep_info_t"	32
.STRUCTMEM	"number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"max_size"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_ep_info_t"

.STRUCT	"_usb_interfaceAssociationDescriptor_t"	64
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFirstInterface"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceCount"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionSubClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iFunction"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_interfaceAssociationDescriptor_t"

.ENUM	"__anon_enum_type_1"
.ENUMERATOR	"IDLE"	0
.ENUMERATOR	"BLOCKED"	1
.ENUMERATOR	"READY"	2
.ENUMERATOR	"RUNNING"	3
.ENUMERATOR	"DELAYED"	4
.ENUMERATOR	"GONE"	5
.ENUM_END	"__anon_enum_type_1"

.UNION	"__unnamed_struct_1"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_1"

.UNION	"__unnamed_struct_2"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_2"

.STRUCT	"__unnamed_struct_3"	16
.STRUCTMEM	"size"	"short"	11	0	0	0	0	0	0	
.STRUCTMEM	"pad"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"cond_code"	"short"	4	0	0	0	0	0	0	
.STRUCT_END	"__unnamed_struct_3"

.UNION	"__unnamed_struct_4"	32
.UNIONMEM	"ep"	"int"	32	1	0	0	0	0	0	
.UNIONMEM	"dif"	"int"	32	1	0	0	0	0	0	
.UNION_END	"__unnamed_struct_4"

.UNION	"__unnamed_struct_5"	32
.UNIONMEM	"uart_baud_rate"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"spi_master_sck_freq"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"param"	"char"	8	0	0	0	0	0	0	
.UNIONMEM	"data"	"void"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_5"

.UNION	"__unnamed_struct_6"	32
.UNIONMEM	"spi_master_sck_freq"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"queue_stat"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"param"	"char"	8	0	0	0	0	0	0	
.UNIONMEM	"data"	"void"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_6"

.UNION	"__unnamed_struct_7"	16
.UNIONMEM	"data"	"char"	16	0	1	0	0	0	1	
.UNIONMEM	"att"	"_usbhostGeneric_ioctl_cb_attach_t"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_7"

.UNION	"__unnamed_struct_8"	16
.UNIONMEM	"data"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_8"

.STRUCT	"_common_ioctl_cb_t"	72
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"set"	"__unnamed_struct_5"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"__unnamed_struct_6"	32	0	0	0	0	0	0	
.STRUCT_END	"_common_ioctl_cb_t"

.ENUM	"GPIO_STATUS"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PORT_IDENTIFIER"	1
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	2
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	3
.ENUMERATOR	"GPIO_ERROR"	4
.ENUMERATOR	"GPIO_FATAL_ERROR"	255
.ENUM_END	"GPIO_STATUS"

.ENUM	"UART_STATUS"
.ENUMERATOR	"UART_OK"	0
.ENUMERATOR	"UART_INVALID_PARAMETER"	1
.ENUMERATOR	"UART_DMA_NOT_ENABLED"	2
.ENUMERATOR	"UART_ERROR"	3
.ENUMERATOR	"UART_FATAL_ERROR"	255
.ENUM_END	"UART_STATUS"

.STRUCT	"_usbhost_ioctl_cb_dev_info_t"	56
.STRUCTMEM	"port_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"addr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"interface_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"alt"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"configuration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"num_configurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_dev_info_t"

.STRUCT	"_usbhost_context_t"	32
.STRUCTMEM	"if_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ep_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iso_xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_context_t"

.ENUM	"IOMUX_STATUS"
.ENUMERATOR	"IOMUX_OK"	0
.ENUMERATOR	"IOMUX_INVALID_SIGNAL"	1
.ENUMERATOR	"IOMUX_INVALID_PIN_SELECTION"	2
.ENUMERATOR	"IOMUX_UNABLE_TO_ROUTE_SIGNAL"	3
.ENUMERATOR	"IOMUX_INVALID_IOCELL_DRIVE_CURRENT"	4
.ENUMERATOR	"IOMUX_INVALID_IOCELL_TRIGGER"	5
.ENUMERATOR	"IOMUX_INVALID_IOCELL_SLEW_RATE"	6
.ENUMERATOR	"IOMUX_INVALID_IOCELL_PULL"	7
.ENUMERATOR	"IOMUX_ERROR"	8
.ENUM_END	"IOMUX_STATUS"

.STRUCT	"_usbhost_ioctl_cb_t"	80
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"handle"	"__unnamed_struct_4"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_usbhost_ioctl_cb_t"

.STRUCT	"_usb_hub_selector_t"	16
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"selector"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_hub_selector_t"

.STRUCT	"_usb_deviceStringDescriptor_t"	24
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bString"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptor_t"

.STRUCT	"_usbhost_xfer_iso_t"	256
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"len_psw"	"__unnamed_struct_3"	128	0	0	0	1	1	0	
.STRUCTMEM	"frame"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_iso_t"

.VARIABLE	"hUSBHOSTGENERIC"	16	"short"	0	0	-1	0	0	0	28	
.VARIABLE	"as"	8	"char"	1	0	-1	0	0	0	31	
.VARIABLE	"ram"	16	"char"	1	1	-1	0	0	1	32	
.VARIABLE	"hUART"	16	"short"	0	0	-1	0	0	0	24	
.VARIABLE	"hUSBHOST_1"	16	"short"	0	0	-1	0	0	0	22	
.VARIABLE	"hUSBHOST_2"	16	"short"	0	0	-1	0	0	0	23	
.VARIABLE	"tcbTHREAD_1"	16	"_vos_tcb_t"	0	1	-1	0	0	1	13	
.VARIABLE	"tcbTHREAD_2"	16	"_vos_tcb_t"	0	1	-1	0	0	1	14	
.VARIABLE	"tcbFIRMWARE"	16	"_vos_tcb_t"	0	1	-1	0	0	1	12	
.VARIABLE	"hGPIO_PORT_A"	16	"short"	0	0	-1	0	0	0	25	
.TYPEDEF	"_vos_gpio_t"	"vos_gpio_t"
.TYPEDEF	"int"	"usbhost_ep_handle_ex"
.TYPEDEF	"_usb_deviceEndpointDescriptor_t"	"usb_deviceEndpointDescriptor_t"
.TYPEDEF	"_vos_semaphore_list_t"	"vos_semaphore_list_t"
.TYPEDEF	"char"	"PF"
.TYPEDEF	"_usb_deviceInterfaceDescriptor_t"	"usb_deviceInterfaceDescriptor_t"
.TYPEDEF	"void"	"usbhost_device_handle"
.TYPEDEF	"_usb_deviceQualifierDescriptor_t"	"usb_deviceQualifierDescriptor_t"
.TYPEDEF	"_vos_mutex_t"	"vos_mutex_t"
.TYPEDEF	"_vos_device_t"	"vos_device_t"
.TYPEDEF	"_usbhostGeneric_ioctl_cb_attach_t"	"usbhostGeneric_ioctl_cb_attach_t"
.TYPEDEF	"_usb_deviceDescriptor_t"	"usb_deviceDescriptor_t"
.TYPEDEF	"_usbhostGeneric_ioctl_t"	"usbhostGeneric_ioctl_t"
.TYPEDEF	"_vos_driver_t"	"vos_driver_t"
.TYPEDEF	"_vos_system_data_area_t"	"vos_system_data_area_t"
.TYPEDEF	"_usb_deviceStringDescriptorZero_t"	"usb_deviceStringDescriptorZero_t"
.TYPEDEF	"char"	"PF_IO"
.TYPEDEF	"_vos_cond_var_t"	"vos_cond_var_t"
.TYPEDEF	"int"	"usbhost_device_handle_ex"
.TYPEDEF	"void"	"PF_INT"
.TYPEDEF	"_gpio_context_t"	"gpio_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_class_t"	"usbhost_ioctl_cb_class_t"
.TYPEDEF	"_usbhost_xfer_t"	"usbhost_xfer_t"
.TYPEDEF	"_uart_context_t"	"uart_context_t"
.TYPEDEF	"_usbhostGeneric_context_t"	"usbhostGeneric_context_t"
.TYPEDEF	"_gpio_ioctl_cb_t"	"gpio_ioctl_cb_t"
.TYPEDEF	"void"	"PF_OPEN"
.TYPEDEF	"_usb_hubStatus_t"	"usb_hubStatus_t"
.TYPEDEF	"_vos_semaphore_t"	"vos_semaphore_t"
.TYPEDEF	"_usb_deviceConfigurationDescriptor_t"	"usb_deviceConfigurationDescriptor_t"
.TYPEDEF	"void"	"PF_CLOSE"
.TYPEDEF	"short"	"addr_t"
.TYPEDEF	"char"	"PF_IOCTL"
.TYPEDEF	"short"	"size_t"
.TYPEDEF	"_vos_dma_config_t"	"vos_dma_config_t"
.TYPEDEF	"_usbhost_ioctl_cb_vid_pid_t"	"usbhost_ioctl_cb_vid_pid_t"
.TYPEDEF	"_usbhost_ioctl_cb_ep_info_t"	"usbhost_ioctl_cb_ep_info_t"
.TYPEDEF	"_usb_interfaceAssociationDescriptor_t"	"usb_interfaceAssociationDescriptor_t"
.TYPEDEF	"_common_ioctl_cb_t"	"common_ioctl_cb_t"
.TYPEDEF	"void"	"usbhost_ep_handle"
.TYPEDEF	"_usbhost_ioctl_cb_dev_info_t"	"usbhost_ioctl_cb_dev_info_t"
.TYPEDEF	"_usbhost_context_t"	"usbhost_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_t"	"usbhost_ioctl_cb_t"
.TYPEDEF	"_usb_hub_selector_t"	"usb_hub_selector_t"
.TYPEDEF	"_usb_deviceStringDescriptor_t"	"usb_deviceStringDescriptor_t"
.TYPEDEF	"_usbhost_xfer_iso_t"	"usbhost_xfer_iso_t"
.TYPEDEF	"void"	"fnVoidPtr"
.TYPEDEF	"_vos_tcb_t"	"vos_tcb_t"
.TYPEDEF	"_usb_deviceRequest_t"	"usb_deviceRequest_t"
.TYPEDEF	"_usb_hubDescriptor_t"	"usb_hubDescriptor_t"
.TYPEDEF	"_usb_hubPortStatus_t"	"usb_hubPortStatus_t"
.FUNCTION	"vos_dma_get_fifo_flow_control"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	83	
.FUNC_END	"vos_dma_get_fifo_flow_control"

.FUNCTION	"vos_start_scheduler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_scheduler"

.FUNCTION	"vos_gpio_write_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	125	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	125	
.FUNC_END	"vos_gpio_write_port"

.FUNCTION	"vos_signal_semaphore_from_isr"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	168	
.FUNC_END	"vos_signal_semaphore_from_isr"

.FUNCTION	"vos_malloc"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"size"	16 "short"	0	0	0	0	0	0	24	
.FUNC_END	"vos_malloc"

.FUNCTION	"vos_create_thread_ex"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	98	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	98	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	98	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	98	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	98	
.FUNC_END	"vos_create_thread_ex"

.FUNCTION	"vos_memcpy"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	27	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	27	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	27	
.FUNC_END	"vos_memcpy"

.FUNCTION	"vos_memset"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	26	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	26	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"vos_memset"

.FUNCTION	"vos_get_kernel_clock"	
.RETURN "int"	32	0	0	0	0	0	0	
.FUNC_END	"vos_get_kernel_clock"

.FUNCTION	"vos_gpio_disable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	129	
.FUNC_END	"vos_gpio_disable_int"

.FUNCTION	"vos_get_package_type"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_package_type"

.FUNCTION	"vos_dma_get_fifo_data_register"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	82	
.FUNC_END	"vos_dma_get_fifo_data_register"

.FUNCTION	"vos_signal_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	167	
.FUNC_END	"vos_signal_semaphore"

.FUNCTION	"vos_gpio_wait_on_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	130	
.FUNC_END	"vos_gpio_wait_on_int"

.FUNCTION	"vos_dma_get_fifo_data"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	85	
.PARAMETER	"dat"	16 "char"	0	1	0	0	0	1	85	
.FUNC_END	"vos_dma_get_fifo_data"

.FUNCTION	"vos_iocell_get_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	228	
.PARAMETER	"drive_current"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"trigger"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"slew_rate"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"pull"	16 "char"	0	1	0	0	0	1	228	
.FUNC_END	"vos_iocell_get_config"

.FUNCTION	"vos_iomux_define_bidi"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"input_signal"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"output_signal"	8 "char"	0	0	0	0	0	0	225	
.FUNC_END	"vos_iomux_define_bidi"

.FUNCTION	"vos_gpio_set_all_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"masks"	16 "_vos_gpio_t"	0	1	0	0	0	1	118	
.FUNC_END	"vos_gpio_set_all_mode"

.FUNCTION	"vos_iocell_set_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"drive_current"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"trigger"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"slew_rate"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"pull"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_iocell_set_config"

.FUNCTION	"vos_gpio_set_pin_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	116	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	116	
.FUNC_END	"vos_gpio_set_pin_mode"

.FUNCTION	"iomux_setup"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"iomux_setup"

.FUNCTION	"vos_get_chip_revision"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_chip_revision"

.FUNCTION	"vos_wait_semaphore_ex"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"l"	16 "_vos_semaphore_list_t"	0	1	0	0	0	1	166	
.FUNC_END	"vos_wait_semaphore_ex"

.FUNCTION	"vos_enable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	72	
.FUNC_END	"vos_enable_interrupts"

.FUNCTION	"vos_dev_read"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	54	
.PARAMETER	"num_to_read"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"num_read"	16 "short"	0	1	0	0	0	1	54	
.FUNC_END	"vos_dev_read"

.FUNCTION	"vos_dev_open"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	53	
.FUNC_END	"vos_dev_open"

.FUNCTION	"vos_halt_cpu"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_halt_cpu"

.FUNCTION	"vos_dev_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	50	
.PARAMETER	"driver_cb"	16 "_vos_driver_t"	0	1	0	0	0	1	50	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	50	
.FUNC_END	"vos_dev_init"

.FUNCTION	"vos_dma_get_fifo_count"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	84	
.FUNC_END	"vos_dma_get_fifo_count"

.FUNCTION	"usbhost_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum_1"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"devNum_2"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"context"	16 "_usbhost_context_t"	0	1	0	0	0	1	348	
.FUNC_END	"usbhost_init"

.FUNCTION	"vos_reset_kernel_clock"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_kernel_clock"

.FUNCTION	"vos_gpio_set_port_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	117	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	117	
.FUNC_END	"vos_gpio_set_port_mode"

.FUNCTION	"vos_iomux_define_input"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	223	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	223	
.FUNC_END	"vos_iomux_define_input"

.FUNCTION	"vos_disable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	73	
.FUNC_END	"vos_disable_interrupts"

.FUNCTION	"vos_get_idle_thread_tcb"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.FUNC_END	"vos_get_idle_thread_tcb"

.FUNCTION	"vos_dma_reset"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	76	
.FUNC_END	"vos_dma_reset"

.FUNCTION	"vos_dev_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	57	
.FUNC_END	"vos_dev_close"

.FUNCTION	"vos_wdt_clear"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_wdt_clear"

.FUNCTION	"vos_heap_size"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_heap_size"

.FUNCTION	"vos_dev_ioctl"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	56	
.PARAMETER	"cb"	16 "void"	0	1	0	0	0	1	56	
.FUNC_END	"vos_dev_ioctl"

.FUNCTION	"vos_dev_write"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	55	
.PARAMETER	"num_to_write"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"num_written"	16 "short"	0	1	0	0	0	1	55	
.FUNC_END	"vos_dev_write"

.FUNCTION	"vos_get_clock_frequency"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_clock_frequency"

.FUNCTION	"vos_set_clock_frequency"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"frequency"	8 "char"	0	0	0	0	0	0	209	
.FUNC_END	"vos_set_clock_frequency"

.FUNCTION	"vos_dma_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	79	
.FUNC_END	"vos_dma_enable"

.FUNCTION	"vos_reset_vnc2"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_vnc2"

.FUNCTION	"vos_heap_space"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"hfree"	16 "short"	0	1	0	0	0	1	30	
.PARAMETER	"hmax"	16 "short"	0	1	0	0	0	1	30	
.FUNC_END	"vos_heap_space"

.FUNCTION	"vos_iomux_define_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	224	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"vos_iomux_define_output"

.FUNCTION	"vos_wdt_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"bitPosition"	8 "char"	0	0	0	0	0	0	244	
.FUNC_END	"vos_wdt_enable"

.FUNCTION	"vos_dma_wait_on_complete"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	81	
.FUNC_END	"vos_dma_wait_on_complete"

.FUNCTION	"vos_lock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	132	
.FUNC_END	"vos_lock_mutex"

.FUNCTION	"vos_power_down"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"wakeMask"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_power_down"

.FUNCTION	"vos_init_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	131	
.PARAMETER	"state"	8 "char"	0	0	0	0	0	0	131	
.FUNC_END	"vos_init_mutex"

.FUNCTION	"vos_gpio_wait_on_any_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	16 "char"	0	1	0	0	0	1	131	
.FUNC_END	"vos_gpio_wait_on_any_int"

.FUNCTION	"vos_get_priority_ceiling"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	135	
.FUNC_END	"vos_get_priority_ceiling"

.FUNCTION	"vos_dma_disable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	80	
.FUNC_END	"vos_dma_disable"

.FUNCTION	"vos_set_priority_ceiling"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	136	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	136	
.FUNC_END	"vos_set_priority_ceiling"

.FUNCTION	"vos_dma_release"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	75	
.FUNC_END	"vos_dma_release"

.FUNCTION	"vos_iomux_disable_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	226	
.FUNC_END	"vos_iomux_disable_output"

.FUNCTION	"vos_dma_acquire"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_dma_acquire"

.FUNCTION	"vos_delay_msecs"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"ms"	16 "short"	0	0	0	0	0	0	103	
.FUNC_END	"vos_delay_msecs"

.FUNCTION	"vos_stack_usage"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	188	
.FUNC_END	"vos_stack_usage"

.FUNCTION	"vos_get_profile"	
.RETURN "int"	32	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	191	
.FUNC_END	"vos_get_profile"

.FUNCTION	"vos_gpio_wait_on_all_ints"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_gpio_wait_on_all_ints"

.FUNCTION	"memset"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	24	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	24	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	24	
.FUNC_END	"memset"

.FUNCTION	"memcpy"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	23	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	23	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	23	
.FUNC_END	"memcpy"

.FUNCTION	"vos_delay_cancel"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	104	
.FUNC_END	"vos_delay_cancel"

.FUNCTION	"strcat"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	29	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	29	const
.FUNC_END	"strcat"

.FUNCTION	"strlen"	extern
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"str"	16 "char"	1	1	0	0	0	1	30	const
.FUNC_END	"strlen"

.FUNCTION	"strcmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	25	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	25	const
.FUNC_END	"strcmp"

.FUNCTION	"strcpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	27	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	27	const
.FUNC_END	"strcpy"

.FUNCTION	"vos_dma_retained_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	78	
.PARAMETER	"mem_addr"	16 "char"	0	1	0	0	0	1	78	
.PARAMETER	"bufsiz"	16 "short"	0	0	0	0	0	0	78	
.FUNC_END	"vos_dma_retained_configure"

.FUNCTION	"vos_unlock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	134	
.FUNC_END	"vos_unlock_mutex"

.FUNCTION	"vos_gpio_read_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	122	
.FUNC_END	"vos_gpio_read_all"

.FUNCTION	"vos_create_thread"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	97	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	97	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	97	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	97	
.FUNC_END	"vos_create_thread"

.FUNCTION	"strncmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"strncmp"

.FUNCTION	"vos_gpio_read_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	120	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	120	
.FUNC_END	"vos_gpio_read_pin"

.FUNCTION	"vos_dma_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	77	
.PARAMETER	"cb"	16 "_vos_dma_config_t"	0	1	0	0	0	1	77	
.FUNC_END	"vos_dma_configure"

.FUNCTION	"strncpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	28	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	28	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	28	
.FUNC_END	"strncpy"

.FUNCTION	"vos_init_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	180	
.FUNC_END	"vos_init_cond_var"

.FUNCTION	"vos_wait_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	181	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	181	
.FUNC_END	"vos_wait_cond_var"

.FUNCTION	"vos_stop_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_stop_profiler"

.FUNCTION	"vos_trylock_mutex"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	133	
.FUNC_END	"vos_trylock_mutex"

.FUNCTION	"vos_free"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"ptrFree"	16 "void"	0	1	0	0	0	1	25	
.FUNC_END	"vos_free"

.FUNCTION	"vos_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"quantum"	8 "char"	0	0	0	0	0	0	52	
.PARAMETER	"tick_cnt"	16 "short"	0	0	0	0	0	0	52	
.PARAMETER	"num_devices"	8 "char"	0	0	0	0	0	0	52	
.FUNC_END	"vos_init"

.FUNCTION	"vos_gpio_read_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	121	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	121	
.FUNC_END	"vos_gpio_read_port"

.FUNCTION	"vos_gpio_write_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	126	
.FUNC_END	"vos_gpio_write_all"

.FUNCTION	"vos_set_idle_thread_tcb_size"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb_size"	16 "short"	0	0	0	0	0	0	100	
.FUNC_END	"vos_set_idle_thread_tcb_size"

.FUNCTION	"vos_init_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"sem"	16 "_vos_semaphore_t"	0	1	0	0	0	1	164	
.PARAMETER	"count"	16 "short"	1	0	0	0	0	0	164	
.FUNC_END	"vos_init_semaphore"

.FUNCTION	"vos_wait_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	165	
.FUNC_END	"vos_wait_semaphore"

.FUNCTION	"vos_gpio_write_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	124	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	124	
.FUNC_END	"vos_gpio_write_pin"

.FUNCTION	"vos_start_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_profiler"

.FUNCTION	"gpio_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	91	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	92	
.FUNC_END	"gpio_init"

.FUNCTION	"uart_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	115	
.PARAMETER	"context"	16 "_uart_context_t"	0	1	0	0	0	1	116	
.FUNC_END	"uart_init"

.FUNCTION	"vos_gpio_enable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"intType"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	128	
.FUNC_END	"vos_gpio_enable_int"

.FUNCTION	"usbhostGeneric_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	62	
.FUNC_END	"usbhostGeneric_init"

.FUNCTION	"vos_signal_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	182	
.FUNC_END	"vos_signal_cond_var"



.TEXT

Str@3	.ASCIIZ	"asim mahakul"

.WEAK	"vos_dma_get_fifo_flow_control"

.WEAK	"vos_start_scheduler"

.WEAK	"vos_gpio_write_port"

.WEAK	"vos_signal_semaphore_from_isr"

.WEAK	"vos_malloc"

.WEAK	"vos_create_thread_ex"

.WEAK	"vos_memcpy"

.WEAK	"vos_memset"

.WEAK	"vos_get_kernel_clock"

.WEAK	"vos_gpio_disable_int"

.WEAK	"vos_get_package_type"

.WEAK	"vos_dma_get_fifo_data_register"

.WEAK	"vos_signal_semaphore"

.WEAK	"vos_gpio_wait_on_int"

.WEAK	"vos_dma_get_fifo_data"

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"iomux_setup"

.WEAK	"vos_get_chip_revision"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"vos_enable_interrupts"

.WEAK	"vos_dev_read"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"usbhost_init"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"vos_iomux_define_input"

.WEAK	"vos_disable_interrupts"

.WEAK	"vos_get_idle_thread_tcb"

.WEAK	"vos_dma_reset"

.WEAK	"vos_dev_close"

.WEAK	"vos_wdt_clear"

.WEAK	"vos_heap_size"

.WEAK	"vos_dev_ioctl"

.WEAK	"vos_dev_write"

.WEAK	"vos_get_clock_frequency"

.WEAK	"vos_set_clock_frequency"

.WEAK	"vos_dma_enable"

.WEAK	"vos_reset_vnc2"

.WEAK	"vos_heap_space"

.WEAK	"vos_iomux_define_output"

.WEAK	"vos_wdt_enable"

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"vos_gpio_wait_on_any_int"

.WEAK	"vos_get_priority_ceiling"

.WEAK	"vos_dma_disable"

.WEAK	"vos_set_priority_ceiling"

.WEAK	"vos_dma_release"

.WEAK	"vos_iomux_disable_output"

.WEAK	"vos_dma_acquire"

.WEAK	"vos_delay_msecs"

.WEAK	"vos_stack_usage"

.WEAK	"vos_get_profile"

.WEAK	"vos_gpio_wait_on_all_ints"

.WEAK	"memset"

.WEAK	"memcpy"

.WEAK	"vos_delay_cancel"

.WEAK	"strcat"

.WEAK	"strlen"

.WEAK	"strcmp"

.WEAK	"strcpy"

.WEAK	"vos_dma_retained_configure"

.WEAK	"vos_unlock_mutex"

.WEAK	"vos_gpio_read_all"

.WEAK	"vos_create_thread"

.WEAK	"strncmp"

.WEAK	"vos_gpio_read_pin"

.WEAK	"vos_dma_configure"

.WEAK	"strncpy"

.WEAK	"vos_init_cond_var"

.WEAK	"vos_wait_cond_var"

.WEAK	"vos_stop_profiler"

.WEAK	"vos_trylock_mutex"

.WEAK	"vos_free"

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"vos_start_profiler"

.WEAK	"gpio_init"

.WEAK	"uart_init"

.WEAK	"vos_gpio_enable_int"

.WEAK	"usbhostGeneric_init"

.WEAK	"vos_signal_cond_var"

.LINE	34
main:	
.GLOBAL	 DO_NOT_EXPORT  "main"

.VARIABLE	"uartContext"	8	"_uart_context_t"	0	0	0	0	0	0	38	
.VARIABLE	"gpioContextA"	8	"_gpio_context_t"	0	0	8	0	0	0	40	
.VARIABLE	"usbhostContext"	32	"_usbhost_context_t"	0	0	16	0	0	0	42	
.FUNCTION	"main"	
.RETURN "void"	0	0	0	73	0	0	0	
SP_DEC	$70
.LINE	46
PUSH8	$5
PUSH16	$1
PUSH8	$50
CALL	vos_init
SP_INC	$4
.LINE	47
PUSH8	$0
CALL	vos_set_clock_frequency
SP_INC	$1
.LINE	48
PUSH16	$512
CALL	vos_set_idle_thread_tcb_size
SP_INC	$2
.LINE	51
CALL	iomux_setup
.LINE	55
SP_STORE	%ecx
ADD16	%ecx	$1
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$1
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$3
LD8	(%ecx)	$64
.LINE	56
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$5
PUSH16	%eax
PUSH8	$2
SP_DEC	$1
CALL	uart_init
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$3
.LINE	59
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$11
LD8	(%ecx)	$0
.LINE	60
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_RD16	%eax	$13
PUSH16	%eax
PUSH8	$3
SP_DEC	$1
CALL	gpio_init
POP8	%eax
SP_WR8	%eax	$18
SP_INC	$3
.LINE	64
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$22
LD8	(%ecx)	$8
.LINE	65
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
LD8	(%ecx)	$16
.LINE	66
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$28
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$30
LD8	(%ecx)	$2
.LINE	67
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$32
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$34
LD8	(%ecx)	$2
.LINE	68
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_RD16	%eax	$36
PUSH16	%eax
PUSH8	$1
PUSH8	$0
SP_DEC	$1
CALL	usbhost_init
POP8	%eax
SP_WR8	%eax	$42
SP_INC	$4
.LINE	71
PUSH8	$4
SP_DEC	$1
CALL	usbhostGeneric_init
POP8	%eax
SP_WR8	%eax	$40
SP_INC	$1
.LINE	74
SP_STORE	%ecx
ADD16	%ecx	$40
LD32	(%ecx)	$firmware
SP_STORE	%ecx
ADD16	%ecx	$44
LD32	(%ecx)	$Str@0
PUSH16	$0
SP_RD16	%eax	$46
PUSH16	%eax
SP_RD32	%eax	$44
PUSH32	%eax
PUSH16	$4096
PUSH8	$20
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$59
SP_INC	$11
SP_RD16	tcbFIRMWARE	$48
.LINE	75
SP_STORE	%ecx
ADD16	%ecx	$50
LD32	(%ecx)	$thread_1
SP_STORE	%ecx
ADD16	%ecx	$54
LD32	(%ecx)	$Str@1
PUSH16	$0
SP_RD16	%eax	$56
PUSH16	%eax
SP_RD32	%eax	$54
PUSH32	%eax
PUSH16	$1024
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$69
SP_INC	$11
SP_RD16	tcbTHREAD_1	$58
.LINE	76
SP_STORE	%ecx
ADD16	%ecx	$60
LD32	(%ecx)	$thread_2
SP_STORE	%ecx
ADD16	%ecx	$64
LD32	(%ecx)	$Str@2
PUSH16	$0
SP_RD16	%eax	$66
PUSH16	%eax
SP_RD32	%eax	$64
PUSH32	%eax
PUSH16	$1024
PUSH8	$24
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$79
SP_INC	$11
SP_RD16	tcbTHREAD_2	$68
.LINE	84
CALL	vos_start_scheduler
.LINE	86
@fl1main_loop:	
.LINE	89
JUMP	@fl1main_loop
.LINE	89
SP_INC	$70
RTS	
.FUNC_END	"main"

.LINE	124
usbhost_connect_state:	
.GLOBAL	 DO_NOT_EXPORT  "usbhost_connect_state"

.VARIABLE	"connectstate"	8	"char"	0	0	0	0	0	0	126	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	1	0	0	0	127	
.FUNCTION	"usbhost_connect_state"	
.RETURN "char"	8	0	0	30	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	31	0	0	0	124	
SP_DEC	$27
.LINE	126
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	129
SP_STORE	%ecx
ADD16	%ecx	$31
CMP16	(%ecx)	$0
JNZ	@IC2
JUMP	@IC1
@IC2:	
.LINE	131
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$16
.LINE	132
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	(%eax)
.LINE	133
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$21
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$4
.LINE	136
SP_RD8	%ecx	$0
CMP8	%ecx	$1
JZ	@IC4
JNZ	@IC3
@IC4:	
.LINE	138
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$24
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$30
SP_INC	$4
@IC3:	
@IC1:	
.LINE	141
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
CPY8	(%ecx)	(%eax)
SP_INC	$27
RTS	
.FUNC_END	"usbhost_connect_state"

.LINE	146
open_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "open_drivers"

.FUNCTION	"open_drivers"	
.RETURN "void"	0	0	0	11	0	0	0	
SP_DEC	$8
.LINE	150
PUSH8	$0
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$1
SP_INC	$1
SP_RD16	hUSBHOST_1	$0
.LINE	151
PUSH8	$1
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$3
SP_INC	$1
SP_RD16	hUSBHOST_2	$2
.LINE	152
PUSH8	$2
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$5
SP_INC	$1
SP_RD16	hUART	$4
.LINE	153
PUSH8	$3
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$7
SP_INC	$1
SP_RD16	hGPIO_PORT_A	$6
.LINE	153
SP_INC	$8
RTS	
.FUNC_END	"open_drivers"

.LINE	157
attach_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "attach_drivers"

.FUNCTION	"attach_drivers"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	157
RTS	
.FUNC_END	"attach_drivers"

.LINE	163
close_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "close_drivers"

.FUNCTION	"close_drivers"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	166
PUSH16	hUSBHOST_1
CALL	vos_dev_close
SP_INC	$2
.LINE	167
PUSH16	hUSBHOST_2
CALL	vos_dev_close
SP_INC	$2
.LINE	168
PUSH16	hUART
CALL	vos_dev_close
SP_INC	$2
.LINE	169
PUSH16	hGPIO_PORT_A
CALL	vos_dev_close
SP_INC	$2
.LINE	169
RTS	
.FUNC_END	"close_drivers"

.LINE	175
firmware:	
.GLOBAL	 DO_NOT_EXPORT  "firmware"

.VARIABLE	"buf2"	104	"char"	0	0	0	1	1	0	181	
.VARIABLE	"startMsg"	16	"char"	1	1	17	0	0	1	184	
.VARIABLE	"foundMsg"	16	"char"	1	1	23	0	0	1	185	
.VARIABLE	"vidMsg"	16	"char"	1	1	29	0	0	1	186	
.VARIABLE	"pidMsg"	16	"char"	1	1	35	0	0	1	187	
.VARIABLE	"crMsg"	16	"char"	1	1	41	0	0	1	188	
.VARIABLE	"uart_iocb"	72	"_common_ioctl_cb_t"	0	0	43	0	0	0	189	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	121	0	0	0	193	
.VARIABLE	"ifDev"	32	"int"	1	0	149	0	0	0	192	
.VARIABLE	"genericAtt"	48	"_usbhostGeneric_ioctl_cb_attach_t"	0	0	160	0	0	0	197	
.VARIABLE	"generic_iocb"	40	"_usbhostGeneric_ioctl_t"	0	0	174	0	0	0	196	
.VARIABLE	"status2"	8	"char"	0	0	214	0	0	0	180	
.VARIABLE	"num_read"	16	"short"	0	0	218	0	0	0	182	
.VARIABLE	"buf"	2816	"char"	0	0	220	1	1	0	181	
.FUNCTION	"firmware"	
.RETURN "void"	0	0	0	601	0	0	0	
SP_DEC	$255
SP_DEC	$255
SP_DEC	$88
.LINE	181
SP_STORE	%ecx
LD32	%eax	$Str@3
CPYROM	(%ecx)	%eax	$6
ADD16	%ecx	$12
INC32	%eax	$6
CPYROM	%ebx	%eax	$1
CPY8	(%ecx)	%ebx
SP_RD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	184
SP_STORE	%ecx
ADD16	%ecx	$13
LD32	(%ecx)	$Str@4
SP_RD16	%ecx	$13
SP_WR16	%ecx	$17
.LINE	185
SP_STORE	%ecx
ADD16	%ecx	$19
LD32	(%ecx)	$Str@5
SP_RD16	%ecx	$19
SP_WR16	%ecx	$23
.LINE	186
SP_STORE	%ecx
ADD16	%ecx	$25
LD32	(%ecx)	$Str@6
SP_RD16	%ecx	$25
SP_WR16	%ecx	$29
.LINE	187
SP_STORE	%ecx
ADD16	%ecx	$31
LD32	(%ecx)	$Str@7
SP_RD16	%ecx	$31
SP_WR16	%ecx	$35
.LINE	188
SP_STORE	%ecx
ADD16	%ecx	$37
LD32	(%ecx)	$Str@8
SP_RD16	%ecx	$37
SP_WR16	%ecx	$41
.LINE	202
CALL	open_drivers
.LINE	210
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$54
SP_STORE	%eax
ADD16	%eax	$52
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$54
LD8	(%ecx)	$34
.LINE	211
SP_STORE	%ecx
ADD16	%ecx	$56
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$58
SP_STORE	%eax
ADD16	%eax	$56
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$60
LD32	(%ecx)	$9600
.LINE	212
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_RD16	%eax	$62
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$68
SP_INC	$4
.LINE	215
SP_STORE	%ecx
ADD16	%ecx	$65
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$67
SP_STORE	%eax
ADD16	%eax	$65
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$67
LD8	(%ecx)	$35
.LINE	216
SP_STORE	%ecx
ADD16	%ecx	$69
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$69
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$71
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$73
LD8	(%ecx)	$0
.LINE	217
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_RD16	%eax	$75
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$81
SP_INC	$4
.LINE	220
SP_STORE	%ecx
ADD16	%ecx	$78
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$80
SP_STORE	%eax
ADD16	%eax	$78
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$80
LD8	(%ecx)	$36
.LINE	221
SP_STORE	%ecx
ADD16	%ecx	$82
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$84
SP_STORE	%eax
ADD16	%eax	$82
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$86
SP_STORE	%eax
ADD16	%eax	$84
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$86
LD8	(%ecx)	$1
.LINE	222
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_RD16	%eax	$88
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$94
SP_INC	$4
.LINE	225
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$93
SP_STORE	%eax
ADD16	%eax	$91
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$93
LD8	(%ecx)	$37
.LINE	226
SP_STORE	%ecx
ADD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$95
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$97
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$99
LD8	(%ecx)	$0
.LINE	227
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_RD16	%eax	$101
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$107
SP_INC	$4
.LINE	230
SP_STORE	%ecx
ADD16	%ecx	$104
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$106
SP_STORE	%eax
ADD16	%eax	$104
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$106
LD8	(%ecx)	$38
.LINE	231
SP_STORE	%ecx
ADD16	%ecx	$108
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$110
SP_STORE	%eax
ADD16	%eax	$108
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$112
SP_STORE	%eax
ADD16	%eax	$110
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$112
LD8	(%ecx)	$0
.LINE	232
SP_STORE	%ecx
ADD16	%ecx	$114
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	%eax
SP_RD16	%eax	$114
PUSH16	%eax
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$120
SP_INC	$4
.LINE	243
PUSH8	$3
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$118
SP_INC	$1
SP_RD16	hGPIO_PORT_A	$117
.LINE	244
PUSH8	$255
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_set_port_mode
POP8	%eax
SP_WR8	%eax	$121
SP_INC	$2
@IC7:	
.LINE	250
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	usbhost_connect_state
POP8	%eax
SP_WR8	%eax	$122
SP_INC	$2
SP_RD8	%ecx	$120
CMP8	%ecx	$17
JZ	@IC12
JNZ	@IC11
@IC12:	
.LINE	270
SP_STORE	%ecx
ADD16	%ecx	$131
SP_STORE	%eax
ADD16	%eax	$121
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$133
SP_STORE	%eax
ADD16	%eax	$131
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$133
LD8	(%ecx)	$33
.LINE	271
SP_STORE	%ecx
ADD16	%ecx	$135
SP_STORE	%eax
ADD16	%eax	$121
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$135
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$139
SP_STORE	%eax
ADD16	%eax	$137
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$139
LD32	(%ecx)	$0
.LINE	272
SP_STORE	%ecx
ADD16	%ecx	$141
SP_STORE	%eax
ADD16	%eax	$121
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$143
SP_STORE	%eax
ADD16	%eax	$141
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$143
LD16	(%ecx)	$0
.LINE	273
SP_STORE	%ecx
ADD16	%ecx	$145
SP_STORE	%eax
ADD16	%eax	$121
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$147
SP_STORE	%eax
ADD16	%eax	$145
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$149
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$147
SP_STORE	%eax
ADD16	%eax	$153
CPY16	(%ecx)	(%eax)
.LINE	274
SP_STORE	%ecx
ADD16	%ecx	$155
SP_STORE	%eax
ADD16	%eax	$121
CPY16	(%ecx)	%eax
SP_RD16	%eax	$155
PUSH16	%eax
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$161
SP_INC	$4
SP_RD8	%ecx	$157
CMP8	%ecx	$0
JZ	@IC16
JNZ	@IC15
@IC16:	
.LINE	288
PUSH8	$4
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$159
SP_INC	$1
SP_RD16	hUSBHOSTGENERIC	$158
.LINE	290
SP_STORE	%ecx
ADD16	%ecx	$166
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$168
SP_STORE	%eax
ADD16	%eax	$166
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$168
CPY16	(%ecx)	hUSBHOST_2
.LINE	291
SP_STORE	%ecx
ADD16	%ecx	$170
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$172
SP_STORE	%eax
ADD16	%eax	$170
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$172
SP_STORE	%eax
ADD16	%eax	$149
CPY32	(%ecx)	(%eax)
.LINE	293
SP_STORE	%ecx
ADD16	%ecx	$179
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$181
SP_STORE	%eax
ADD16	%eax	$179
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$181
LD8	(%ecx)	$1
.LINE	294
SP_STORE	%ecx
ADD16	%ecx	$183
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$185
SP_STORE	%eax
ADD16	%eax	$183
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$187
SP_STORE	%eax
ADD16	%eax	$185
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$189
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$187
SP_STORE	%eax
ADD16	%eax	$189
CPY16	(%ecx)	(%eax)
.LINE	296
SP_STORE	%ecx
ADD16	%ecx	$191
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_RD16	%eax	$191
PUSH16	%eax
PUSH16	hUSBHOSTGENERIC
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$197
SP_INC	$4
SP_RD8	%ecx	$193
CMP8	%ecx	$0
JZ	@IC20
JNZ	@IC19
@IC20:	
@IC23:	
.LINE	298
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC25
JUMP	@IC24
@IC25:	
.LINE	300
SP_STORE	%ecx
ADD16	%ecx	$194
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$196
SP_STORE	%eax
ADD16	%eax	$194
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$196
CPY16	(%ecx)	hUSBHOST_2
.LINE	301
SP_STORE	%ecx
ADD16	%ecx	$198
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$200
SP_STORE	%eax
ADD16	%eax	$198
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$200
SP_STORE	%eax
ADD16	%eax	$149
CPY32	(%ecx)	(%eax)
.LINE	303
SP_STORE	%ecx
ADD16	%ecx	$202
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$204
SP_STORE	%eax
ADD16	%eax	$202
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$204
LD8	(%ecx)	$5
.LINE	305
SP_STORE	%ecx
ADD16	%ecx	$206
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$208
SP_STORE	%eax
ADD16	%eax	$206
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$210
SP_STORE	%eax
ADD16	%eax	$208
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$212
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$210
SP_STORE	%eax
ADD16	%eax	$212
CPY16	(%ecx)	(%eax)
.LINE	308
LD8	%ecx	$3
SP_WR8	%ecx	$214
.LINE	309
SP_STORE	%ecx
ADD16	%ecx	$215
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_RD16	%eax	$215
PUSH16	%eax
PUSH16	hUSBHOSTGENERIC
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$221
SP_INC	$4
SP_RD8	%ecx	$217
SP_WR8	%ecx	$214
.LINE	311
SP_RD8	%ecx	$214
CMP8	%ecx	$0
JZ	@IC27
JNZ	@IC26
@IC27:	
.LINE	314
LD16	%ecx	$12
SP_WR16	%ecx	$218
@IC30:	
.LINE	315
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC32
JUMP	@IC31
@IC32:	
.LINE	319
SP_STORE	%ecx
ADD16	%ecx	$572
SP_STORE	%eax
ADD16	%eax	$220
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$574
SP_STORE	%eax
ADD16	%eax	$218
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$574
PUSH16	(%eax)
PUSH16	$352
SP_STORE	%eax
ADD16	%eax	$576
PUSH16	(%eax)
PUSH16	hUSBHOSTGENERIC
SP_DEC	$1
CALL	vos_dev_read
SP_STORE	%eax
ADD16	%eax	$585
POP8	(%eax)
SP_INC	$8
SP_STORE	%ecx
ADD16	%ecx	$576
CMP8	(%ecx)	$0
JZ	@IC35
JNZ	@IC34
@IC35:	
.LINE	321
SP_STORE	%ecx
ADD16	%ecx	$577
SP_STORE	%eax
ADD16	%eax	$220
CPY16	(%ecx)	%eax
PUSH16	$0
SP_RD16	%eax	$220
PUSH16	%eax
SP_STORE	%eax
ADD16	%eax	$581
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$588
POP8	(%eax)
SP_INC	$8
.LINE	322
SP_STORE	%ecx
ADD16	%ecx	$580
CPY8	%eax	as
SHL32	%eax	$24
SAR32	%eax	$24
LD32	%ebx	$255
XOR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
ADD16	%eax	$580
CPY8	as	(%eax)
.LINE	323
PUSH8	as
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
SP_STORE	%eax
ADD16	%eax	$587
POP8	(%eax)
SP_INC	$2
.LINE	324
PUSH16	$95
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$588
POP8	(%eax)
SP_INC	$2
JUMP	@IC33
@IC34:	
@IC33:	
.LINE	315
JUMP	@IC30
@IC31:	
@IC26:	
.LINE	298
JUMP	@IC23
@IC24:	
@IC19:	
.LINE	370
PUSH16	hUSBHOSTGENERIC
CALL	vos_dev_close
SP_INC	$2
@IC15:	
.LINE	274
JUMP	@IC10
@IC11:	
.LINE	396
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	usbhost_connect_state
SP_STORE	%eax
ADD16	%eax	$589
POP8	(%eax)
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$586
CMP8	(%ecx)	$1
JZ	@IC40
JNZ	@IC39
@IC40:	
JUMP	@IC38
@IC39:	
.LINE	418
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	usbhost_connect_state
SP_STORE	%eax
ADD16	%eax	$590
POP8	(%eax)
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$587
CMP8	(%ecx)	$0
JZ	@IC44
JNZ	@IC43
@IC44:	
.LINE	421
PUSH8	$255
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
SP_STORE	%eax
ADD16	%eax	$591
POP8	(%eax)
SP_INC	$2
.LINE	422
PUSH16	$120
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$592
POP8	(%eax)
SP_INC	$2
.LINE	423
PUSH8	$0
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
SP_STORE	%eax
ADD16	%eax	$593
POP8	(%eax)
SP_INC	$2
.LINE	424
PUSH16	$80
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$594
POP8	(%eax)
SP_INC	$2
@IC43:	
@IC38:	
@IC10:	
@IC8:	
.LINE	442
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC7
JUMP	@IC9
@IC9:	
@IC47:	
.LINE	450
LD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC49
JUMP	@IC48
@IC49:	
.LINE	452
SP_STORE	%ecx
ADD16	%ecx	$592
CPY8	%eax	as
SHL32	%eax	$24
SAR32	%eax	$24
LD32	%ebx	$255
XOR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
ADD16	%eax	$592
CPY8	as	(%eax)
.LINE	453
PUSH8	as
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
SP_STORE	%eax
ADD16	%eax	$599
POP8	(%eax)
SP_INC	$2
.LINE	454
PUSH16	$225
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$600
POP8	(%eax)
SP_INC	$2
.LINE	450
JUMP	@IC47
@IC48:	
.LINE	450
SP_INC	$255
SP_INC	$255
SP_INC	$88
RTS	
.FUNC_END	"firmware"

.LINE	458
thread_1:	
.GLOBAL	 DO_NOT_EXPORT  "thread_1"

.FUNCTION	"thread_1"	
.RETURN "void"	0	0	0	9	0	0	0	
SP_DEC	$6
@IC50:	
.LINE	460
LD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC52
JUMP	@IC51
@IC52:	
.LINE	470
SP_STORE	%ecx
ADD16	%ecx	$0
CPY8	%eax	as
SHL32	%eax	$24
SAR32	%eax	$24
LD32	%ebx	$255
XOR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
CPY8	as	(%eax)
.LINE	472
PUSH8	as
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$2
.LINE	473
PUSH16	$225
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$2
.LINE	460
JUMP	@IC50
@IC51:	
.LINE	460
SP_INC	$6
RTS	
.FUNC_END	"thread_1"

.LINE	481
thread_2:	
.GLOBAL	 DO_NOT_EXPORT  "thread_2"

.FUNCTION	"thread_2"	
.RETURN "void"	0	0	0	9	0	0	0	
SP_DEC	$6
@IC53:	
.LINE	484
LD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC55
JUMP	@IC54
@IC55:	
.LINE	487
SP_STORE	%ecx
CPY8	%eax	as
SHL32	%eax	$24
SAR32	%eax	$24
LD32	%ebx	$255
XOR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
CPY8	as	(%eax)
.LINE	489
PUSH8	as
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$2
.LINE	490
PUSH16	$225
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$2
.LINE	484
JUMP	@IC53
@IC54:	
.LINE	484
SP_INC	$6
RTS	
.FUNC_END	"thread_2"

