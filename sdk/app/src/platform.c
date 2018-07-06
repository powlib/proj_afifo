/******************************************************************************
*
* Copyright (C) 2010 - 2015 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/


#include "platform_config.h"
#ifdef STDOUT_IS_16550
 #include "xuartns550_l.h"

 #define UART_BAUD 9600
#endif

XIntc    xintc_obj;
XAxiDma  xaxidma_obj;
XBram    xbram_obj;
volatile u32 __attribute__ ((aligned(0x100),section(".dmamem"))) tx_buff [ BUFF_TOTAL ];
volatile u32 __attribute__ ((aligned(0x100),section(".dmamem"))) rx_buff [ BUFF_TOTAL ];
volatile bool txready = false;
volatile bool rxready = false;

void Xil_AssertCallbackDef( const char8 *File, s32 Line );
void XAxiDma_MM2SHandler(void* ref);
void XAxiDma_S2MMHandler(void* ref);
void enable_caches();
void disable_caches();
void init_uart();

void init_platform()
{
	int XResult;

    enable_caches();
    init_uart();

    xil_printf( "Configuring assertion callback function...\n" );
	Xil_AssertSetCallback( Xil_AssertCallbackDef );

    xil_printf( "Configuring BRAM...\n" );
    {
    	XBram_Config* XConfig;
    	XConfig = XBram_LookupConfig( XPAR_AXI_BRAM_CTRL_0_DEVICE_ID );
    	Xil_AssertVoid( XConfig!=NULL );
    	XResult = XBram_CfgInitialize( &xbram_obj, XConfig, XConfig->CtrlBaseAddress );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    	XResult = XBram_SelfTest( &xbram_obj, 0 );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    }


    xil_printf( "Initializing interrupts...\n" );
    {
    	XResult = XIntc_Initialize( &xintc_obj, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID );
    	Xil_AssertVoid( XResult==XST_SUCCESS );

    	/* Interrupt handler of the AXI Interrupt Controller needs to be associated with
    	 the extern interrupt of the microblaze. */
    	Xil_ExceptionRegisterHandler( XIL_EXCEPTION_ID_INT, (XInterruptHandler)XIntc_InterruptHandler, (void*)&xintc_obj );
    	Xil_ExceptionInit();
    	Xil_ExceptionEnable();
    }

    xil_printf( "Testing interrupts...\n" );
    {
    	XResult = XIntc_Start( &xintc_obj, XIN_SIMULATION_MODE );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    	XResult = XIntc_SelfTest( &xintc_obj );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    	XResult = XIntc_Start( &xintc_obj, XIN_REAL_MODE );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    }

    xil_printf( "Initializing DMA...\n" );
    {
    	XAxiDma_Config* XConfig;
    	XConfig = XAxiDma_LookupConfig( XPAR_AXIDMA_0_DEVICE_ID );
    	Xil_AssertVoid( XConfig!=NULL );
    	XResult = XAxiDma_CfgInitialize( &xaxidma_obj, XConfig );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    	XResult = XAxiDma_Selftest( &xaxidma_obj );
    	Xil_AssertVoid( XResult==XST_SUCCESS );

    	xil_printf( "Configuring the RX side of the DMA...\n" );
    	{
    		XAxiDma_Bd BdTemplate;
			XAxiDma_BdRing* RxRingPtr;
    		XAxiDma_Bd* BdPtr;

    		/* Create the BdRing for one Bd. */
    		RxRingPtr = XAxiDma_GetRxRing( &xaxidma_obj );
    		Xil_AssertVoid( RxRingPtr!=NULL );
    		XResult = XAxiDma_BdRingCreate( RxRingPtr, ( UINTPTR ) DMA_RX_BDRING_ADDR,
						( UINTPTR ) DMA_RX_BDRING_ADDR, XAXIDMA_BD_MINIMUM_ALIGNMENT, 1 );
    		Xil_AssertVoid( XResult==XST_SUCCESS );
    		XAxiDma_BdClear( &BdTemplate );
    		XResult = XAxiDma_BdRingClone( RxRingPtr, &BdTemplate );
    		Xil_AssertVoid( XResult==XST_SUCCESS );

    		/* Create and configure the single Bd in the BdRing. */
    		XResult = XAxiDma_BdRingAlloc( RxRingPtr, 1, &BdPtr );
    		Xil_AssertVoid( XResult==XST_SUCCESS );
    		XAxiDma_BdClear( BdPtr );
    		XResult = XAxiDma_BdSetBufAddr( BdPtr, ( UINTPTR ) rx_buff );
    		Xil_AssertVoid( XResult==XST_SUCCESS );
			XResult = XAxiDma_BdSetLength( BdPtr, sizeof( rx_buff ), RxRingPtr->MaxTransferLen );
			Xil_AssertVoid( XResult==XST_SUCCESS );
			XAxiDma_BdSetCtrl( BdPtr, 0 );
			XAxiDma_BdSetId( BdPtr, ( u32 ) rx_buff );
			XAxiDma_BdSetTUser( BdPtr, DMA_TUSER );
			XAxiDma_BdSetARCache( BdPtr, DMA_ARCACHE );
			XAxiDma_BdSetARUser( BdPtr, DMA_ARUSER );
			XAxiDma_BdSetVSize( BdPtr, DMA_VSIZE );
			XAxiDma_BdSetStride( BdPtr, sizeof( rx_buff ) );

			/* Enable interrupt. */
			XAxiDma_BdRingIntEnable( RxRingPtr, XAXIDMA_IRQ_IOC_MASK );
			XAxiDma_BdRingSetCoalesce( RxRingPtr, 1, 0 );

			/* Start the receive channel. */
			XResult = XAxiDma_BdRingStart( RxRingPtr );
			Xil_AssertVoid( XResult==XST_SUCCESS );
    	}

    	xil_printf( "Configuring the TX side of the DMA...\n" );
    	{
			XAxiDma_Bd BdTemplate;
			XAxiDma_BdRing* TxRingPtr;
			XAxiDma_Bd* BdPtr;

			/* Create the TX BdRing. Since the buffer sizes aren't large, only one
			Bd should be needed in the ring. */
			TxRingPtr = XAxiDma_GetTxRing( &xaxidma_obj );
			Xil_AssertVoid( TxRingPtr!=NULL );
			XResult = XAxiDma_BdRingCreate( TxRingPtr, ( UINTPTR ) DMA_TX_BDRING_ADDR,
							( UINTPTR ) DMA_TX_BDRING_ADDR, XAXIDMA_BD_MINIMUM_ALIGNMENT, 1 );
			Xil_AssertVoid( XResult==XST_SUCCESS );
			XAxiDma_BdClear( &BdTemplate );
			XResult = XAxiDma_BdRingClone( TxRingPtr, &BdTemplate );
			Xil_AssertVoid( XResult==XST_SUCCESS );

			/* Create and configure the single Bd in Ring. */
			XResult = XAxiDma_BdRingAlloc( TxRingPtr, 1, &BdPtr );
			Xil_AssertVoid( XResult==XST_SUCCESS );
			XAxiDma_BdClear( BdPtr );
			XResult = XAxiDma_BdSetBufAddr( BdPtr, ( UINTPTR ) tx_buff );
			Xil_AssertVoid( XResult==XST_SUCCESS );
			XResult = XAxiDma_BdSetLength( BdPtr, sizeof( tx_buff ), TxRingPtr->MaxTransferLen );
			Xil_AssertVoid( XResult==XST_SUCCESS );
			XAxiDma_BdSetTDest( BdPtr, 0 );
			XAxiDma_BdSetCtrl( BdPtr, XAXIDMA_BD_CTRL_TXSOF_MASK|XAXIDMA_BD_CTRL_TXEOF_MASK );
			XAxiDma_BdSetId( BdPtr, ( u32 ) tx_buff );
			XAxiDma_BdSetTUser( BdPtr, DMA_TUSER );
			XAxiDma_BdSetARCache( BdPtr, DMA_ARCACHE );
			XAxiDma_BdSetARUser( BdPtr, DMA_ARUSER );
			XAxiDma_BdSetVSize( BdPtr, DMA_VSIZE );
			XAxiDma_BdSetStride( BdPtr, sizeof( tx_buff ) );

			/* Enable interrupt. */
			XAxiDma_BdRingIntEnable( TxRingPtr, XAXIDMA_IRQ_IOC_MASK );
			XAxiDma_BdRingSetCoalesce( TxRingPtr, 1, 0 );

			/* Start the TX Channel. */
			XResult = XAxiDma_BdRingStart( TxRingPtr );
			Xil_AssertVoid( XResult==XST_SUCCESS );

			/* Unlike the Rx Channel, we're going to wait until the start of the application
			to bring the TxBd Ring to the DMA. */
    	}

    	XAxiDma_IntrEnable( &xaxidma_obj, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DMA_TO_DEVICE );
    	XAxiDma_IntrEnable( &xaxidma_obj, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA );
    }

    xil_printf( "Connecting and enabling the interrupts...\n" );
    {
    	XResult = XIntc_Connect( &xintc_obj,
    			XPAR_MICROBLAZE_0_AXI_INTC_AXI_DMA_0_MM2S_INTROUT_INTR,
				(XInterruptHandler)XAxiDma_MM2SHandler, (void*)NULL );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    	XResult = XIntc_Connect( &xintc_obj,
    			XPAR_MICROBLAZE_0_AXI_INTC_AXI_DMA_0_S2MM_INTROUT_INTR,
				(XInterruptHandler)XAxiDma_S2MMHandler, (void*)NULL );
    	Xil_AssertVoid( XResult==XST_SUCCESS );
    	XIntc_Enable( &xintc_obj, XPAR_MICROBLAZE_0_AXI_INTC_AXI_DMA_0_MM2S_INTROUT_INTR );
    	XIntc_Enable( &xintc_obj, XPAR_MICROBLAZE_0_AXI_INTC_AXI_DMA_0_S2MM_INTROUT_INTR );
    }


    xil_printf( "Platform has been initialized!\n" );
}

void enable_caches()
{
#ifdef __PPC__
    Xil_ICacheEnableRegion(CACHEABLE_REGION_MASK);
    Xil_DCacheEnableRegion(CACHEABLE_REGION_MASK);
#elif __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

void disable_caches()
{
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheDisable();
#endif
#endif
}

void init_uart()
{
#ifdef STDOUT_IS_16550
    XUartNs550_SetBaud(STDOUT_BASEADDR, XPAR_XUARTNS550_CLOCK_HZ, UART_BAUD);
    XUartNs550_SetLineControlReg(STDOUT_BASEADDR, XUN_LCR_8_DATA_BITS);
#endif
    /* Bootrom/BSP configures PS7/PSU UART to 115200 bps */
}

void test_run(u32 lane)
{
	int XResult;
	XAxiDma_BdRing *TxRingPtr, *RxRingPtr;
	XAxiDma_Bd *TxBdPtr, *RxBdPtr;

	/* Get the TX BdRing and the first Bd in ring. */
	TxRingPtr = XAxiDma_GetTxRing( &xaxidma_obj );
	Xil_AssertVoid( TxRingPtr!=NULL );
	TxBdPtr = ( XAxiDma_Bd* )TxRingPtr->FirstBdPhysAddr;
	Xil_AssertVoid( TxBdPtr!=NULL );

	/* Get the RX BdRing and the first Bd in ring. */
	RxRingPtr = XAxiDma_GetRxRing( &xaxidma_obj );
	Xil_AssertVoid( RxRingPtr!=NULL );
	RxBdPtr = ( XAxiDma_Bd* )RxRingPtr->FirstBdPhysAddr;
	Xil_AssertVoid( RxBdPtr!=NULL );

	/* Configure the lane and reset the flags. */
	txready = false;
	rxready = false;
	XAxiDma_BdSetTDest( TxBdPtr, lane );

	/* Clear RX Buffer. Flush the cache. */
	memset( ( void* ) rx_buff, 0, sizeof( rx_buff ) );
	Xil_DCacheFlushRange( ( UINTPTR ) tx_buff, sizeof( tx_buff ) );
	Xil_DCacheFlushRange( ( UINTPTR ) rx_buff, sizeof( rx_buff ) );

	/* Bring the RxBdRing to the hardware. */
	XResult = XAxiDma_BdRingToHw( RxRingPtr, 1, RxBdPtr );
	Xil_AssertVoid( XResult==XST_SUCCESS );

	/* Bring the BdRing to the hardware to start the DMA operation. */
	XResult = XAxiDma_BdRingToHw( TxRingPtr, 1, TxBdPtr );
	Xil_AssertVoid( XResult==XST_SUCCESS );

	/* Wait until the DMA operations complete. If this goes well, the
	Async FIFOs should return the same data to the RX Buffer. */
	while (txready==false && rxready==false)
		continue;


	//XAxiDma_BdRingFromHw( TxRingPtr, 1, &BdPtr );

	//XResult = XAxiDma_BdRingToHw( TxRingPtr, 1, BdPtr );
	//Xil_AssertVoid( XResult==XST_SUCCESS );
}

void cleanup_platform()
{
    disable_caches();
}

void XAxiDma_MM2SHandler(void* ref)
{
	(void)ref;
	XAxiDma_BdRingAckIrq( XAxiDma_GetTxRing( &xaxidma_obj ), XAXIDMA_IRQ_IOC_MASK );
	txready = true;
}

void XAxiDma_S2MMHandler(void* ref)
{
	(void)ref;
	XAxiDma_BdRingAckIrq( XAxiDma_GetRxRing( &xaxidma_obj ), XAXIDMA_IRQ_IOC_MASK );
	rxready = true;
}

void Xil_AssertCallbackDef( const char8 *File, s32 Line )
{
	xil_printf( "Assertion failed in source %s at line %d...\n\r", File, Line );
}
