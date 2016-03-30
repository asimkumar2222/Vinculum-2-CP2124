.FILE "Debug\USBHostGenericDrv.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
usbhostGeneric_cb	.DB	25	?
.GLOBAL	  DO_NOT_EXPORT "usbhostGeneric_cb"


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
.STRUCTMEM	"set"	"__unnamed_struct_5"	16	0	0	0	0	0	0	
.STRUCTMEM	"get"	"__unnamed_struct_6"	16	0	0	0	0	0	0	
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

.UNION	"__unnamed_struct_5"	16
.UNIONMEM	"data"	"char"	16	0	1	0	0	0	1	
.UNIONMEM	"att"	"_usbhostGeneric_ioctl_cb_attach_t"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_5"

.UNION	"__unnamed_struct_6"	16
.UNIONMEM	"data"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_6"

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

.VARIABLE	"usbhostGeneric_cb"	200	"_vos_driver_t"	0	0	-1	0	0	0	18	
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
.TYPEDEF	"_usbhost_ioctl_cb_class_t"	"usbhost_ioctl_cb_class_t"
.TYPEDEF	"_usbhost_xfer_t"	"usbhost_xfer_t"
.TYPEDEF	"_usbhostGeneric_context_t"	"usbhostGeneric_context_t"
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

.FUNCTION	"vos_gpio_enable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"intType"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	128	
.FUNC_END	"vos_gpio_enable_int"

.FUNCTION	"vos_signal_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	182	
.FUNC_END	"vos_signal_cond_var"



.TEXT


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

.WEAK	"vos_gpio_enable_int"

.WEAK	"vos_signal_cond_var"

.LINE	44
usbhostGeneric_init:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_init"

.VARIABLE	"ctx"	16	"_usbhostGeneric_context_t"	0	1	2	0	0	1	46	
.FUNCTION	"usbhostGeneric_init"	
.RETURN "char"	8	0	0	63	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	64	0	0	0	44	
SP_DEC	$60
.LINE	48
PUSH16	$14
SP_DEC	$2
CALL	vos_malloc
POP16	%eax
SP_WR16	%eax	$2
SP_INC	$2
SP_RD16	%ecx	$0
SP_WR16	%ecx	$2
.LINE	49
PUSH16	$14
PUSH32	$0
SP_RD16	%eax	$8
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$12
SP_INC	$8
.LINE	52
SP_STORE	%ecx
ADD16	%ecx	$6
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$6
LD16	%ebx	$24
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$8
LD8	(%ecx)	$0
.LINE	53
SP_STORE	%ecx
ADD16	%ecx	$10
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$10
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$14
LD32	(%ecx)	$usbhostGeneric_read
SP_RD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$14
CPY32	(%ecx)	(%eax)
.LINE	54
SP_STORE	%ecx
ADD16	%ecx	$18
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$18
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$22
LD32	(%ecx)	$usbhostGeneric_write
SP_RD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$22
CPY32	(%ecx)	(%eax)
.LINE	55
SP_STORE	%ecx
ADD16	%ecx	$26
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$16
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$30
LD32	(%ecx)	$usbhostGeneric_ioctl
SP_RD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$30
CPY32	(%ecx)	(%eax)
.LINE	56
SP_STORE	%ecx
ADD16	%ecx	$34
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$34
LD16	%ebx	$20
ADD16	(%ecx)	(%eax)	%ebx
LD32	%ecx	$0
SP_WR32	%ecx	$38
SP_RD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$38
CPY32	(%ecx)	(%eax)
.LINE	57
SP_STORE	%ecx
ADD16	%ecx	$42
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$46
LD32	(%ecx)	$usbhostGeneric_open
SP_RD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$46
CPY32	(%ecx)	(%eax)
.LINE	58
SP_STORE	%ecx
ADD16	%ecx	$50
LD16	(%ecx)	$usbhostGeneric_cb
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$54
LD32	(%ecx)	$usbhostGeneric_close
SP_RD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$54
CPY32	(%ecx)	(%eax)
.LINE	61
SP_STORE	%ecx
ADD16	%ecx	$58
LD16	(%ecx)	$usbhostGeneric_cb
SP_RD16	%eax	$2
PUSH16	%eax
SP_RD16	%eax	$60
PUSH16	%eax
SP_RD16	%eax	$68
PUSH8	%eax
CALL	vos_dev_init
SP_INC	$5
.LINE	63
LD8	%eax	$0
SP_WR8	%eax	$63
SP_INC	$60
RTS	
.FUNC_END	"usbhostGeneric_init"

.LINE	67
usbhostGeneric_open:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_open"

.FUNCTION	"usbhostGeneric_open"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	67
RTS	
.FUNC_END	"usbhostGeneric_open"

.LINE	72
usbhostGeneric_close:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_close"

.FUNCTION	"usbhostGeneric_close"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	72
RTS	
.FUNC_END	"usbhostGeneric_close"

.LINE	80
usbhostGeneric_read:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_read"

.VARIABLE	"actual_read"	16	"short"	0	0	0	0	0	0	82	
.VARIABLE	"status"	8	"char"	0	0	2	0	0	0	83	
.VARIABLE	"s"	40	"_vos_semaphore_t"	0	0	11	0	0	0	85	
.VARIABLE	"xfer"	112	"_usbhost_xfer_t"	0	0	18	0	0	0	84	
.FUNCTION	"usbhostGeneric_read"	
.RETURN "char"	8	0	0	100	0	0	0	
.PARAMETER	"buf"	16 "char"	1	1	101	0	0	1	77	
.PARAMETER	"num_to_read"	16 "short"	0	0	103	0	0	0	78	
.PARAMETER	"num_read"	16 "short"	0	1	105	0	0	1	79	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	107	0	0	1	80	
SP_DEC	$97
.LINE	82
LD16	%ecx	$0
SP_WR16	%ecx	$0
.LINE	83
LD8	%ecx	$3
SP_WR8	%ecx	$2
.LINE	87
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$107
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$5
SP_RD16	%eax	$3
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$5
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$9
SP_RD16	%eax	$7
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$9
CMP16	(%ecx)	$0
JNZ	@IC2
JUMP	@IC1
@IC2:	
.LINE	89
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
PUSH16	$0
SP_RD16	%eax	$18
PUSH16	%eax
CALL	vos_init_semaphore
SP_INC	$4
.LINE	91
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
PUSH16	$14
PUSH32	$0
SP_RD16	%eax	$38
PUSH16	%eax
SP_DEC	$2
CALL	vos_memset
POP16	%eax
SP_WR16	%eax	$42
SP_INC	$8
.LINE	92
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$101
CPY16	(%ecx)	(%eax)
.LINE	93
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$103
CPY16	(%ecx)	(%eax)
.LINE	94
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$107
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$54
SP_RD16	%eax	$52
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$54
CPY32	(%ecx)	(%eax)
.LINE	95
SP_STORE	%ecx
ADD16	%ecx	$58
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$62
CPY16	(%ecx)	(%eax)
.LINE	96
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$66
LD8	(%ecx)	$15
.LINE	97
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$70
LD8	(%ecx)	$66
.LINE	99
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$107
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$74
SP_RD16	%eax	$72
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$74
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$78
SP_RD16	%eax	$76
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$80
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$80
SP_WR16	%ecx	$82
PUSH16	$0
PUSH16	$14
SP_RD16	%eax	$86
PUSH16	%eax
SP_RD16	%eax	$84
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$92
SP_INC	$8
SP_RD8	%ecx	$84
SP_WR8	%ecx	$2
.LINE	101
SP_RD8	%ecx	$2
CMP8	%ecx	$0
JZ	@IC5
JNZ	@IC4
@IC5:	
.LINE	103
LD8	%ecx	$0
SP_WR8	%ecx	$2
.LINE	104
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$18
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$89
SP_WR16	%ecx	$0
JUMP	@IC3
@IC4:	
.LINE	108
SP_STORE	%ecx
ADD16	%ecx	$91
SP_RD8	%eax	$2
AND32	%eax	$255
LD32	%ebx	$128
OR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$91
SP_WR8	%ecx	$2
@IC3:	
@IC1:	
.LINE	112
SP_STORE	%ecx
ADD16	%ecx	$105
CMP16	(%ecx)	$0
JNZ	@IC9
JUMP	@IC8
@IC9:	
.LINE	114
SP_RD16	%ecx	$105
SP_WR16	%ecx	$95
SP_RD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	(%eax)
@IC8:	
.LINE	117
SP_STORE	%eax
ADD16	%eax	$2
SP_STORE	%ecx
ADD16	%ecx	$100
CPY8	(%ecx)	(%eax)
SP_INC	$97
RTS	
.FUNC_END	"usbhostGeneric_read"

.LINE	124
usbhostGeneric_write:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_write"

.VARIABLE	"actual_write"	16	"short"	0	0	0	0	0	0	126	
.VARIABLE	"status"	8	"char"	0	0	2	0	0	0	127	
.VARIABLE	"xfer"	112	"_usbhost_xfer_t"	0	0	11	0	0	0	128	
.VARIABLE	"s"	40	"_vos_semaphore_t"	0	0	29	0	0	0	129	
.FUNCTION	"usbhostGeneric_write"	
.RETURN "char"	8	0	0	100	0	0	0	
.PARAMETER	"buf"	16 "char"	1	1	101	0	0	1	121	
.PARAMETER	"num_to_write"	16 "short"	0	0	103	0	0	0	122	
.PARAMETER	"num_written"	16 "short"	0	1	105	0	0	1	123	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	107	0	0	1	124	
SP_DEC	$97
.LINE	126
LD16	%ecx	$0
SP_WR16	%ecx	$0
.LINE	127
LD8	%ecx	$3
SP_WR8	%ecx	$2
.LINE	131
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$107
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$5
SP_RD16	%eax	$3
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$5
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$9
SP_RD16	%eax	$7
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$9
CMP16	(%ecx)	$0
JNZ	@IC11
JUMP	@IC10
@IC11:	
.LINE	133
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
PUSH16	$14
PUSH32	$0
SP_RD16	%eax	$31
PUSH16	%eax
SP_DEC	$2
CALL	vos_memset
POP16	%eax
SP_WR16	%eax	$35
SP_INC	$8
.LINE	134
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$29
CPY16	(%ecx)	%eax
PUSH16	$0
SP_RD16	%eax	$36
PUSH16	%eax
CALL	vos_init_semaphore
SP_INC	$4
.LINE	136
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$101
CPY16	(%ecx)	(%eax)
.LINE	137
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$103
CPY16	(%ecx)	(%eax)
.LINE	138
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$107
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$54
SP_RD16	%eax	$52
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$54
CPY32	(%ecx)	(%eax)
.LINE	139
SP_STORE	%ecx
ADD16	%ecx	$58
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$29
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$62
CPY16	(%ecx)	(%eax)
.LINE	140
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$66
LD8	(%ecx)	$15
.LINE	141
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$70
LD8	(%ecx)	$2
.LINE	142
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$107
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$74
SP_RD16	%eax	$72
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$74
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$78
SP_RD16	%eax	$76
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$80
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$80
SP_WR16	%ecx	$82
PUSH16	$0
PUSH16	$14
SP_RD16	%eax	$86
PUSH16	%eax
SP_RD16	%eax	$84
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$92
SP_INC	$8
SP_RD8	%ecx	$84
SP_WR8	%ecx	$2
.LINE	144
SP_RD8	%ecx	$2
CMP8	%ecx	$0
JZ	@IC14
JNZ	@IC13
@IC14:	
.LINE	146
LD8	%ecx	$0
SP_WR8	%ecx	$2
.LINE	147
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$89
SP_WR16	%ecx	$0
JUMP	@IC12
@IC13:	
.LINE	151
SP_STORE	%ecx
ADD16	%ecx	$91
SP_RD8	%eax	$2
AND32	%eax	$255
LD32	%ebx	$128
OR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$91
SP_WR8	%ecx	$2
@IC12:	
@IC10:	
.LINE	155
SP_STORE	%ecx
ADD16	%ecx	$105
CMP16	(%ecx)	$0
JNZ	@IC18
JUMP	@IC17
@IC18:	
.LINE	157
SP_RD16	%ecx	$105
SP_WR16	%ecx	$95
SP_RD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	(%eax)
@IC17:	
.LINE	160
SP_STORE	%eax
ADD16	%eax	$2
SP_STORE	%ecx
ADD16	%ecx	$100
CPY8	(%ecx)	(%eax)
SP_INC	$97
RTS	
.FUNC_END	"usbhostGeneric_write"

.LINE	164
usbhostGeneric_ioctl_setup:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_ioctl_setup"

.VARIABLE	"desc_dev"	64	"_usb_deviceRequest_t"	0	0	0	0	0	0	169	
.VARIABLE	"hc_ioctl"	80	"_usbhost_ioctl_cb_t"	0	0	28	0	0	0	167	
.VARIABLE	"buf"	16	"char"	0	0	68	1	1	0	170	
.VARIABLE	"status"	8	"char"	0	0	83	0	0	0	171	
.FUNCTION	"usbhostGeneric_ioctl_setup"	
.RETURN "char"	8	0	0	108	0	0	0	
.PARAMETER	"cb"	16 "_usbhostGeneric_ioctl_t"	0	1	109	0	0	1	164	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	111	0	0	1	164	
SP_DEC	$105
.LINE	175
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
LD8	(%ecx)	$128
.LINE	178
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$14
LD8	(%ecx)	$0
.LINE	179
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$18
LD16	(%ecx)	$0
.LINE	180
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$22
LD16	(%ecx)	$0
.LINE	181
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
LD16	(%ecx)	$2
.LINE	183
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$38
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$40
LD8	(%ecx)	$80
.LINE	184
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$111
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$54
SP_RD16	%eax	$52
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$54
CPY32	(%ecx)	(%eax)
.LINE	185
SP_STORE	%ecx
ADD16	%ecx	$58
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$62
CPY16	(%ecx)	(%eax)
.LINE	186
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$70
CPY16	(%ecx)	(%eax)
.LINE	188
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$111
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$74
SP_RD16	%eax	$72
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$74
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$78
SP_RD16	%eax	$76
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$80
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_RD16	%eax	$80
PUSH16	%eax
SP_RD16	%eax	$80
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$86
SP_INC	$4
SP_RD8	%ecx	$82
SP_WR8	%ecx	$83
.LINE	190
SP_RD8	%ecx	$83
CMP8	%ecx	$0
JZ	@IC20
JNZ	@IC19
@IC20:	
.LINE	193
SP_STORE	%ecx
ADD16	%ecx	$84
SP_STORE	%eax
ADD16	%eax	$109
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$86
SP_RD16	%eax	$84
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$86
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$90
SP_STORE	%eax
ADD16	%eax	$88
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$92
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$96
SP_STORE	%eax
ADD16	%eax	$68
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$98
SP_STORE	%eax
ADD16	%eax	$96
SP_STORE	%ebx
ADD16	%ebx	$92
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$100
SP_RD16	%eax	$98
CPY8	(%ecx)	(%eax)
SP_RD16	%ecx	$90
SP_RD8	%eax	$100
AND16	%eax	$255
CPY16	(%ecx)	%eax
.LINE	194
LD8	%eax	$0
SP_WR8	%eax	$108
SP_INC	$105
RTS	
@IC19:	
.LINE	197
SP_STORE	%ecx
ADD16	%ecx	$101
SP_RD8	%eax	$83
AND32	%eax	$255
LD32	%ebx	$128
OR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
ADD16	%eax	$101
SP_STORE	%ecx
ADD16	%ecx	$108
CPY8	(%ecx)	(%eax)
SP_INC	$105
RTS	
.FUNC_END	"usbhostGeneric_ioctl_setup"

.LINE	203
usbhostGeneric_ioctl_enable:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_ioctl_enable"

.VARIABLE	"desc_dev"	64	"_usb_deviceRequest_t"	0	0	0	0	0	0	208	
.VARIABLE	"test"	8	"char"	0	0	36	0	0	0	210	
.VARIABLE	"hc_ioctl"	80	"_usbhost_ioctl_cb_t"	0	0	37	0	0	0	206	
.VARIABLE	"buf"	16	"char"	0	0	77	1	1	0	209	
.VARIABLE	"add2"	32	"int"	1	0	91	0	0	0	211	
.VARIABLE	"status"	8	"char"	0	0	106	0	0	0	210	
.VARIABLE	"buf2"	32	"char"	0	0	157	1	1	0	209	
.FUNCTION	"usbhostGeneric_ioctl_enable"	
.RETURN "char"	8	0	0	208	0	0	0	
.PARAMETER	"cb"	16 "_usbhostGeneric_ioctl_t"	0	1	209	0	0	1	203	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	211	0	0	1	203	
SP_DEC	$205
.LINE	215
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
LD8	(%ecx)	$65
.LINE	216
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$14
LD8	(%ecx)	$0
.LINE	217
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$18
LD16	(%ecx)	$1
.LINE	218
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$22
LD16	(%ecx)	$0
.LINE	219
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
LD16	(%ecx)	$0
.LINE	220
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$211
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_RD16	%eax	$28
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$30
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$34
SP_RD16	%eax	$32
CPY16	(%ecx)	(%eax)
SP_RD8	%ecx	$34
SP_WR8	%ecx	$36
.LINE	221
SP_STORE	%ecx
ADD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$47
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$49
LD8	(%ecx)	$80
.LINE	222
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$53
SP_STORE	%eax
ADD16	%eax	$51
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$53
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$57
SP_STORE	%eax
ADD16	%eax	$211
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$59
SP_RD16	%eax	$57
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$61
SP_STORE	%eax
ADD16	%eax	$59
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$63
SP_RD16	%eax	$61
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$63
CPY32	(%ecx)	(%eax)
.LINE	223
SP_STORE	%ecx
ADD16	%ecx	$67
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$69
SP_STORE	%eax
ADD16	%eax	$67
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$69
SP_STORE	%eax
ADD16	%eax	$71
CPY16	(%ecx)	(%eax)
.LINE	224
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$73
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$77
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$79
CPY16	(%ecx)	(%eax)
.LINE	225
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$83
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$87
SP_RD16	%eax	$85
CPY32	(%ecx)	(%eax)
SP_RD32	%ecx	$87
SP_WR32	%ecx	$91
.LINE	231
SP_STORE	%ecx
ADD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$211
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$97
SP_RD16	%eax	$95
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$97
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$101
SP_RD16	%eax	$99
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$103
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_RD16	%eax	$103
PUSH16	%eax
SP_RD16	%eax	$103
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$109
SP_INC	$4
SP_RD8	%ecx	$105
SP_WR8	%ecx	$106
.LINE	236
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$109
SP_STORE	%eax
ADD16	%eax	$107
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$109
LD8	(%ecx)	$193
.LINE	237
SP_STORE	%ecx
ADD16	%ecx	$111
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$113
SP_STORE	%eax
ADD16	%eax	$111
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$113
LD8	(%ecx)	$29
.LINE	238
SP_STORE	%ecx
ADD16	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$117
SP_STORE	%eax
ADD16	%eax	$115
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$117
LD16	(%ecx)	$0
.LINE	239
SP_STORE	%ecx
ADD16	%ecx	$119
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$119
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$121
LD16	(%ecx)	$0
.LINE	240
SP_STORE	%ecx
ADD16	%ecx	$123
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$125
SP_STORE	%eax
ADD16	%eax	$123
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$125
LD16	(%ecx)	$4
.LINE	242
SP_STORE	%ecx
ADD16	%ecx	$127
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$129
SP_STORE	%eax
ADD16	%eax	$127
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$129
LD8	(%ecx)	$80
.LINE	243
SP_STORE	%ecx
ADD16	%ecx	$131
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$133
SP_STORE	%eax
ADD16	%eax	$131
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$135
SP_STORE	%eax
ADD16	%eax	$133
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$211
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$139
SP_RD16	%eax	$137
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$141
SP_STORE	%eax
ADD16	%eax	$139
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$143
SP_RD16	%eax	$141
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$135
SP_STORE	%eax
ADD16	%eax	$143
CPY32	(%ecx)	(%eax)
.LINE	244
SP_STORE	%ecx
ADD16	%ecx	$147
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$149
SP_STORE	%eax
ADD16	%eax	$147
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$151
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$149
SP_STORE	%eax
ADD16	%eax	$151
CPY16	(%ecx)	(%eax)
.LINE	245
SP_STORE	%ecx
ADD16	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$155
SP_STORE	%eax
ADD16	%eax	$153
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$161
SP_STORE	%eax
ADD16	%eax	$157
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$155
SP_STORE	%eax
ADD16	%eax	$161
CPY16	(%ecx)	(%eax)
.LINE	246
SP_STORE	%ecx
ADD16	%ecx	$163
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$165
SP_STORE	%eax
ADD16	%eax	$163
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$167
SP_STORE	%eax
ADD16	%eax	$165
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$169
SP_RD16	%eax	$167
CPY32	(%ecx)	(%eax)
SP_RD32	%ecx	$169
SP_WR32	%ecx	$91
.LINE	248
SP_STORE	%ecx
ADD16	%ecx	$173
SP_STORE	%eax
ADD16	%eax	$211
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$175
SP_RD16	%eax	$173
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$177
SP_STORE	%eax
ADD16	%eax	$175
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$179
SP_RD16	%eax	$177
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$181
SP_STORE	%eax
ADD16	%eax	$37
CPY16	(%ecx)	%eax
SP_RD16	%eax	$181
PUSH16	%eax
SP_RD16	%eax	$181
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$187
SP_INC	$4
SP_RD8	%ecx	$183
SP_WR8	%ecx	$106
.LINE	255
SP_RD8	%ecx	$106
CMP8	%ecx	$0
JZ	@IC24
JNZ	@IC23
@IC24:	
.LINE	258
SP_STORE	%ecx
ADD16	%ecx	$184
SP_STORE	%eax
ADD16	%eax	$209
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$186
SP_RD16	%eax	$184
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$188
SP_STORE	%eax
ADD16	%eax	$186
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$190
SP_STORE	%eax
ADD16	%eax	$188
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$192
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$196
SP_STORE	%eax
ADD16	%eax	$77
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$198
SP_STORE	%eax
ADD16	%eax	$196
SP_STORE	%ebx
ADD16	%ebx	$192
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$200
SP_RD16	%eax	$198
CPY8	(%ecx)	(%eax)
SP_RD16	%ecx	$190
SP_RD8	%eax	$200
AND16	%eax	$255
CPY16	(%ecx)	%eax
.LINE	259
LD8	%eax	$0
SP_WR8	%eax	$208
SP_INC	$205
RTS	
@IC23:	
.LINE	262
SP_STORE	%ecx
ADD16	%ecx	$201
SP_RD8	%eax	$106
AND32	%eax	$255
LD32	%ebx	$128
OR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
ADD16	%eax	$201
SP_STORE	%ecx
ADD16	%ecx	$208
CPY8	(%ecx)	(%eax)
SP_INC	$205
RTS	
.FUNC_END	"usbhostGeneric_ioctl_enable"

.LINE	270
usbhostGeneric_attach:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_attach"

.VARIABLE	"add2"	32	"int"	1	0	0	0	0	0	272	
.VARIABLE	"status"	8	"char"	0	0	4	0	0	0	276	
.VARIABLE	"atInfo"	16	"_usbhostGeneric_ioctl_cb_attach_t"	0	1	15	0	0	1	273	
.VARIABLE	"hc_ioctl"	80	"_usbhost_ioctl_cb_t"	0	0	31	0	0	0	275	
.FUNCTION	"usbhostGeneric_attach"	
.RETURN "char"	8	0	0	173	0	0	0	
.PARAMETER	"cb"	16 "_usbhostGeneric_ioctl_t"	0	1	174	0	0	1	270	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	176	0	0	1	270	
SP_DEC	$170
.LINE	272
LD32	%ecx	$0
SP_WR32	%ecx	$0
.LINE	276
LD8	%ecx	$1
SP_WR8	%ecx	$4
.LINE	278
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$174
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$7
SP_RD16	%eax	$5
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$13
SP_RD16	%eax	$11
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$13
SP_WR16	%ecx	$15
.LINE	279
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$19
SP_RD16	%eax	$17
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$19
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$25
SP_RD16	%eax	$23
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$25
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$29
SP_RD16	%eax	$27
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$29
CPY16	(%ecx)	(%eax)
@IC27:	
.LINE	285
SP_STORE	%ecx
ADD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$41
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$43
LD8	(%ecx)	$48
.LINE	286
SP_STORE	%ecx
ADD16	%ecx	$45
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$45
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$47
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$53
SP_RD16	%eax	$51
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$53
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$57
SP_RD16	%eax	$55
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$57
CPY32	(%ecx)	(%eax)
.LINE	287
SP_STORE	%ecx
ADD16	%ecx	$61
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$61
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$65
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$67
SP_RD16	%eax	$65
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$69
SP_STORE	%eax
ADD16	%eax	$67
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$69
CPY16	(%ecx)	(%eax)
.LINE	288
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$71
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$75
SP_RD16	%eax	$73
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
SP_RD16	%eax	$75
AND32	%eax	$65535
CPY32	(%ecx)	%eax
.LINE	289
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$79
SP_RD16	%eax	$77
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$79
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$83
SP_RD16	%eax	$81
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_RD16	%eax	$85
PUSH16	%eax
SP_RD16	%eax	$85
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$91
SP_INC	$4
SP_RD8	%ecx	$87
CMP8	%ecx	$0
JNZ	@IC31
JZ	@IC30
@IC31:	
.LINE	291
LD8	%ecx	$3
SP_WR8	%ecx	$4
.LINE	292
JUMP	@IC29
@IC30:	
.LINE	296
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$90
SP_STORE	%eax
ADD16	%eax	$88
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$90
LD8	(%ecx)	$49
.LINE	297
SP_STORE	%ecx
ADD16	%ecx	$92
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$94
SP_STORE	%eax
ADD16	%eax	$92
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$96
SP_STORE	%eax
ADD16	%eax	$94
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$98
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$100
SP_RD16	%eax	$98
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$102
SP_STORE	%eax
ADD16	%eax	$100
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$104
SP_RD16	%eax	$102
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$96
SP_STORE	%eax
ADD16	%eax	$104
CPY32	(%ecx)	(%eax)
.LINE	298
SP_STORE	%ecx
ADD16	%ecx	$108
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$110
SP_STORE	%eax
ADD16	%eax	$108
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$112
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$114
SP_RD16	%eax	$112
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$116
SP_STORE	%eax
ADD16	%eax	$114
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$110
SP_STORE	%eax
ADD16	%eax	$116
CPY16	(%ecx)	(%eax)
.LINE	300
SP_STORE	%ecx
ADD16	%ecx	$118
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$120
SP_RD16	%eax	$118
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$122
SP_STORE	%eax
ADD16	%eax	$120
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$124
SP_RD16	%eax	$122
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$126
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_RD16	%eax	$126
PUSH16	%eax
SP_RD16	%eax	$126
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$132
SP_INC	$4
SP_RD8	%ecx	$128
CMP8	%ecx	$0
JNZ	@IC35
JZ	@IC34
@IC35:	
.LINE	302
LD8	%ecx	$3
SP_WR8	%ecx	$4
.LINE	303
JUMP	@IC29
@IC34:	
.LINE	307
SP_STORE	%ecx
ADD16	%ecx	$129
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$131
SP_STORE	%eax
ADD16	%eax	$129
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$131
LD8	(%ecx)	$50
.LINE	308
SP_STORE	%ecx
ADD16	%ecx	$133
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$135
SP_STORE	%eax
ADD16	%eax	$133
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$135
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$139
SP_STORE	%eax
ADD16	%eax	$15
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$141
SP_RD16	%eax	$139
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$143
SP_STORE	%eax
ADD16	%eax	$141
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$145
SP_RD16	%eax	$143
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$145
CPY32	(%ecx)	(%eax)
.LINE	309
SP_STORE	%ecx
ADD16	%ecx	$149
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$151
SP_STORE	%eax
ADD16	%eax	$149
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$155
SP_RD16	%eax	$153
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$157
SP_STORE	%eax
ADD16	%eax	$155
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$151
SP_STORE	%eax
ADD16	%eax	$157
CPY16	(%ecx)	(%eax)
.LINE	311
SP_STORE	%ecx
ADD16	%ecx	$159
SP_STORE	%eax
ADD16	%eax	$176
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$161
SP_RD16	%eax	$159
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$163
SP_STORE	%eax
ADD16	%eax	$161
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$165
SP_RD16	%eax	$163
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$167
SP_STORE	%eax
ADD16	%eax	$31
CPY16	(%ecx)	%eax
SP_RD16	%eax	$167
PUSH16	%eax
SP_RD16	%eax	$167
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$173
SP_INC	$4
SP_RD8	%ecx	$169
CMP8	%ecx	$0
JNZ	@IC39
JZ	@IC38
@IC39:	
.LINE	313
LD8	%ecx	$3
SP_WR8	%ecx	$4
.LINE	314
JUMP	@IC29
@IC38:	
.LINE	317
LD8	%ecx	$0
SP_WR8	%ecx	$4
@IC28:	
.LINE	319
LD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC27
JUMP	@IC29
@IC29:	
.LINE	321
SP_STORE	%eax
ADD16	%eax	$4
SP_STORE	%ecx
ADD16	%ecx	$173
CPY8	(%ecx)	(%eax)
SP_INC	$170
RTS	
.FUNC_END	"usbhostGeneric_attach"

.LINE	325
usbhostGeneric_detach:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_detach"

.FUNCTION	"usbhostGeneric_detach"	
.RETURN "void"	0	0	0	27	0	0	0	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	27	0	0	1	325	
SP_DEC	$24
.LINE	328
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$27
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$4
LD16	(%ecx)	$0
.LINE	329
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$27
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$6
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
LD32	(%ecx)	$0
.LINE	330
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$27
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$14
SP_RD16	%eax	$12
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$14
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$16
LD32	(%ecx)	$0
.LINE	331
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$27
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$20
SP_RD16	%eax	$18
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$22
LD32	(%ecx)	$0
.LINE	331
SP_INC	$24
RTS	
.FUNC_END	"usbhostGeneric_detach"

.LINE	335
usbhostGeneric_ioctl:	
.GLOBAL	 DO_NOT_EXPORT  "usbhostGeneric_ioctl"

.VARIABLE	"status"	8	"char"	0	0	0	0	0	0	337	
.FUNCTION	"usbhostGeneric_ioctl"	
.RETURN "char"	8	0	0	15	0	0	0	
.PARAMETER	"cb"	16 "_usbhostGeneric_ioctl_t"	0	1	16	0	0	1	335	
.PARAMETER	"ctx"	16 "_usbhostGeneric_context_t"	0	1	18	0	0	1	335	
SP_DEC	$12
.LINE	337
LD8	%ecx	$1
SP_WR8	%ecx	$0
.LINE	339
JUMP	@IC44
@IC43:	
.LINE	342
SP_RD16	%eax	$18
PUSH16	%eax
SP_RD16	%eax	$18
PUSH16	%eax
SP_DEC	$1
CALL	usbhostGeneric_ioctl_enable
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$4
SP_RD8	%ecx	$1
SP_WR8	%ecx	$0
.LINE	339
JUMP	@IC42
@IC45:	
.LINE	347
SP_RD16	%eax	$18
PUSH16	%eax
SP_RD16	%eax	$18
PUSH16	%eax
SP_DEC	$1
CALL	usbhostGeneric_ioctl_setup
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$4
SP_RD8	%ecx	$2
SP_WR8	%ecx	$0
.LINE	339
JUMP	@IC42
@IC47:	
.LINE	351
SP_RD16	%eax	$18
PUSH16	%eax
SP_RD16	%eax	$18
PUSH16	%eax
SP_DEC	$1
CALL	usbhostGeneric_attach
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$4
SP_RD8	%ecx	$3
SP_WR8	%ecx	$0
.LINE	339
JUMP	@IC42
@IC49:	
.LINE	355
SP_RD16	%eax	$18
PUSH16	%eax
CALL	usbhostGeneric_detach
SP_INC	$2
.LINE	356
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	339
JUMP	@IC42
@IC51:	
.LINE	360
SP_RD16	%eax	$18
PUSH16	%eax
SP_RD16	%eax	$18
PUSH16	%eax
SP_DEC	$1
CALL	usbhostGeneric_ioctl_enable
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$4
SP_RD8	%ecx	$4
SP_WR8	%ecx	$0
.LINE	339
JUMP	@IC42
@IC53:	
.LINE	365
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$15
CPY8	(%ecx)	(%eax)
SP_INC	$12
RTS	
.LINE	339
JUMP	@IC42
@IC44:	
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$7
SP_RD16	%eax	$5
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$11
SP_RD16	%eax	$9
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$11
CMP8	%ecx	$4
JZ	@IC43
@IC46:	
SP_RD8	%ecx	$11
CMP8	%ecx	$3
JZ	@IC45
@IC48:	
SP_RD8	%ecx	$11
CMP8	%ecx	$1
JZ	@IC47
@IC50:	
SP_RD8	%ecx	$11
CMP8	%ecx	$2
JZ	@IC49
@IC52:	
SP_RD8	%ecx	$11
CMP8	%ecx	$5
JZ	@IC51
@IC54:	
JUMP	@IC53
@IC42:	
.LINE	369
SP_STORE	%eax
ADD16	%eax	$0
SP_STORE	%ecx
ADD16	%ecx	$15
CPY8	(%ecx)	(%eax)
SP_INC	$12
RTS	
.FUNC_END	"usbhostGeneric_ioctl"

