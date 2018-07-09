#ifndef __PLATFORM_CONFIG_H_
#define __PLATFORM_CONFIG_H_

#include <string.h>
#include <stdbool.h>

#include "xparameters.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_assert.h"
#include "xil_printf.h"
#include "xintc.h"
#include "xaxidma.h"
#include "xbram.h"
#include "xil_io.h"

#define BUFF_TOTAL            ( 256 )
#define DMA_TX_BDRING_ADDR	  ( 0xC0002000 )
#define DMA_RX_BDRING_ADDR    ( 0xC0003000 )
#define DMA_ARCACHE 					( 0x3 )		/* Cache type */
#define DMA_ARUSER 						( 0x0 )		/* Sideband signals */
#define DMA_TUSER						( 0x0 )
#define DMA_VSIZE						( 0x1 )		/* Vsize */
#define MEMBAR							__asm__ __volatile__ ("" : : : "memory" );

extern void test_run(u32 lane);

extern volatile u32 tx_buff[ BUFF_TOTAL ];
extern volatile u32 rx_buff[ BUFF_TOTAL ];

#endif
