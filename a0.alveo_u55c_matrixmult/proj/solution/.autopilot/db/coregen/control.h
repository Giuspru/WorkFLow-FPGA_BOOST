// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of M
//        bit 31~0 - M[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of K
//        bit 31~0 - K[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of N
//        bit 31~0 - N[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x2c : Data signal of x
//        bit 31~0 - x[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of y
//        bit 31~0 - y[31:0] (Read/Write)
// 0x38 : Data signal of y
//        bit 31~0 - y[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of z
//        bit 31~0 - z[31:0] (Read/Write)
// 0x44 : Data signal of z
//        bit 31~0 - z[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL 0x00
#define CONTROL_ADDR_GIE     0x04
#define CONTROL_ADDR_IER     0x08
#define CONTROL_ADDR_ISR     0x0c
#define CONTROL_ADDR_M_DATA  0x10
#define CONTROL_BITS_M_DATA  32
#define CONTROL_ADDR_K_DATA  0x18
#define CONTROL_BITS_K_DATA  32
#define CONTROL_ADDR_N_DATA  0x20
#define CONTROL_BITS_N_DATA  32
#define CONTROL_ADDR_X_DATA  0x28
#define CONTROL_BITS_X_DATA  64
#define CONTROL_ADDR_Y_DATA  0x34
#define CONTROL_BITS_Y_DATA  64
#define CONTROL_ADDR_Z_DATA  0x40
#define CONTROL_BITS_Z_DATA  64
