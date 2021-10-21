`timescale 1ns/1ns
module riscv_sopc (
`ifdef XILINX
    inout       [14:0]      DDR_addr,
    inout       [2:0]       DDR_ba,
    inout                   DDR_cas_n,
    inout                   DDR_ck_n,
    inout                   DDR_ck_p,
    inout                   DDR_cke,
    inout                   DDR_cs_n,
    inout       [3:0]       DDR_dm,
    inout       [31:0]      DDR_dq,
    inout       [3:0]       DDR_dqs_n,
    inout       [3:0]       DDR_dqs_p,
    inout                   DDR_odt,
    inout                   DDR_ras_n,
    inout                   DDR_we_n,
    inout                   DDR_reset_n,
    inout                   FIXED_IO_ddr_vrn,
    inout                   FIXED_IO_ddr_vrp,
    inout                   FIXED_IO_ps_clk,
    inout                   FIXED_IO_ps_porb,
    inout                   FIXED_IO_ps_srstb,
    inout       [53:0]      FIXED_IO_mio,
`endif
    input                   clk,
    input                   rst,
    input       [3:0]       key,
    output      [3:0]       pio
);

wire            soc_clk;
wire            soc_rst_n;
wire    [3:0]   cpu_i_arid;
wire    [7:0]   cpu_i_arlen;
wire    [2:0]   cpu_i_arsize;
wire    [1:0]   cpu_i_arburst;
wire    [31:0]  cpu_i_araddr;
wire            cpu_i_arlock;
wire    [2:0]   cpu_i_arprot;
wire    [3:0]   cpu_i_arqos;
wire    [3:0]   cpu_i_arregion;
wire    [3:0]   cpu_i_arcache;
wire            cpu_i_arready;
wire            cpu_i_arvalid;
wire    [3:0]   cpu_i_awid;
wire    [7:0]   cpu_i_awlen;
wire    [2:0]   cpu_i_awsize;
wire    [1:0]   cpu_i_awburst;
wire            cpu_i_awlock;
wire    [2:0]   cpu_i_awprot;
wire    [3:0]   cpu_i_awqos;
wire    [3:0]   cpu_i_awregion;
wire    [3:0]   cpu_i_awcache;
wire    [31:0]  cpu_i_awaddr;
wire            cpu_i_awready;
wire            cpu_i_awvalid;
wire    [3:0]   cpu_i_rid;
wire            cpu_i_rlast;
wire            cpu_i_rready;
wire            cpu_i_rvalid;
wire    [31:0]  cpu_i_rdata;
wire    [1:0]   cpu_i_rresp;
wire    [3:0]   cpu_i_wid;
wire            cpu_i_wready;
wire            cpu_i_wvalid;
wire    [3:0]   cpu_i_wstrb;
wire    [31:0]  cpu_i_wdata;
wire            cpu_i_wlast;
wire    [3:0]   cpu_i_bid;
wire            cpu_i_bvalid;
wire            cpu_i_bready;
wire    [1:0]   cpu_i_bresp;
wire    [3:0]   cpu_d_arid;
wire    [7:0]   cpu_d_arlen;
wire    [2:0]   cpu_d_arsize;
wire    [1:0]   cpu_d_arburst;
wire    [31:0]  cpu_d_araddr;
wire            cpu_d_arlock;
wire    [2:0]   cpu_d_arprot;
wire    [3:0]   cpu_d_arqos;
wire    [3:0]   cpu_d_arregion;
wire    [3:0]   cpu_d_arcache;
wire            cpu_d_arready;
wire            cpu_d_arvalid;
wire    [3:0]   cpu_d_awid;
wire    [7:0]   cpu_d_awlen;
wire    [2:0]   cpu_d_awsize;
wire    [1:0]   cpu_d_awburst;
wire            cpu_d_awlock;
wire    [2:0]   cpu_d_awprot;
wire    [3:0]   cpu_d_awqos;
wire    [3:0]   cpu_d_awregion;
wire    [3:0]   cpu_d_awcache;
wire    [31:0]  cpu_d_awaddr;
wire            cpu_d_awready;
wire            cpu_d_awvalid;
wire    [3:0]   cpu_d_rid;
wire            cpu_d_rlast;
wire            cpu_d_rready;
wire            cpu_d_rvalid;
wire    [31:0]  cpu_d_rdata;
wire    [1:0]   cpu_d_rresp;
wire    [3:0]   cpu_d_wid;
wire            cpu_d_wready;
wire            cpu_d_wvalid;
wire    [3:0]   cpu_d_wstrb;
wire    [31:0]  cpu_d_wdata;
wire            cpu_d_wlast;
wire    [3:0]   cpu_d_bid;
wire            cpu_d_bvalid;
wire            cpu_d_bready;
wire    [1:0]   cpu_d_bresp;
wire    [7:0]   ram_arid;
wire    [7:0]   ram_arlen;
wire    [2:0]   ram_arsize;
wire    [1:0]   ram_arburst;
wire    [31:0]  ram_araddr;
wire            ram_arlock;
wire    [2:0]   ram_arprot;
wire    [3:0]   ram_arqos;
wire    [3:0]   ram_arregion;
wire    [3:0]   ram_arcache;
wire            ram_arready;
wire            ram_arvalid;
wire    [7:0]   ram_awid;
wire    [7:0]   ram_awlen;
wire    [2:0]   ram_awsize;
wire    [1:0]   ram_awburst;
wire            ram_awlock;
wire    [2:0]   ram_awprot;
wire    [3:0]   ram_awqos;
wire    [3:0]   ram_awregion;
wire    [3:0]   ram_awcache;
wire    [31:0]  ram_awaddr;
wire            ram_awready;
wire            ram_awvalid;
wire    [7:0]   ram_rid;
wire            ram_rlast;
wire            ram_rready;
wire            ram_rvalid;
wire    [31:0]  ram_rdata;
wire    [1:0]   ram_rresp;
wire    [7:0]   ram_wid;
wire            ram_wready;
wire            ram_wvalid;
wire    [3:0]   ram_wstrb;
wire    [31:0]  ram_wdata;
wire            ram_wlast;
wire    [7:0]   ram_bid;
wire            ram_bvalid;
wire            ram_bready;
wire    [1:0]   ram_bresp;

wire            sram_rd;
wire    [3:0]   sram_wr;
wire    [31:0]  sram_addr;
wire    [31:0]  sram_wdata;
wire    [31:0]  sram_rdata;
wire            sram_accept;

wire    [63:0]  gpio;

assign soc_clk = clk;

rst_sync u_rst_sync (
    .clk                        (clk                ),
    .rst_i                      (rst                ),
    .rst_o                      (soc_rst_n          )
);

riscv_top u_riscv (
    .clk_i                      (soc_clk            ),
    .rst_i                      (~soc_rst_n         ),
    .intr_i                     (1'b0               ),
    .reset_vector_i             (32'h0              ),
    .axi_i_awid_o               (cpu_i_awid         ),
    .axi_i_awlen_o              (cpu_i_awlen        ),
    .axi_i_awburst_o            (cpu_i_awburst      ),
    .axi_i_awaddr_o             (cpu_i_awaddr       ),
    .axi_i_awvalid_o            (cpu_i_awvalid      ),
    .axi_i_awready_i            (cpu_i_awready      ),
    .axi_i_arid_o               (cpu_i_arid         ),
    .axi_i_arlen_o              (cpu_i_arlen        ),
    .axi_i_arburst_o            (cpu_i_arburst      ),
    .axi_i_araddr_o             (cpu_i_araddr       ),
    .axi_i_arvalid_o            (cpu_i_arvalid      ),
    .axi_i_arready_i            (cpu_i_arready      ),
    .axi_i_rid_i                (cpu_i_rid          ),
    .axi_i_rvalid_i             (cpu_i_rvalid       ),
    .axi_i_rready_o             (cpu_i_rready       ),
    .axi_i_rdata_i              (cpu_i_rdata        ),
    .axi_i_rresp_i              (cpu_i_rresp        ),
    .axi_i_rlast_i              (cpu_i_rlast        ),
    //.axi_i_wid_o                (cpu_i_wid          ),
    .axi_i_wvalid_o             (cpu_i_wvalid       ),
    .axi_i_wready_i             (cpu_i_wready       ),
    .axi_i_wstrb_o              (cpu_i_wstrb        ),
    .axi_i_wdata_o              (cpu_i_wdata        ),
    .axi_i_wlast_o              (cpu_i_wlast        ),
    .axi_i_bid_i                (cpu_i_bid          ),
    .axi_i_bready_o             (cpu_i_bready       ),
    .axi_i_bvalid_i             (cpu_i_bvalid       ),
    .axi_i_bresp_i              (cpu_i_bresp        ),
    .axi_d_awid_o               (cpu_d_awid         ),
    .axi_d_awlen_o              (cpu_d_awlen        ),
    .axi_d_awburst_o            (cpu_d_awburst      ),
    .axi_d_awaddr_o             (cpu_d_awaddr       ),
    .axi_d_awvalid_o            (cpu_d_awvalid      ),
    .axi_d_awready_i            (cpu_d_awready      ),
    .axi_d_arid_o               (cpu_d_arid         ),
    .axi_d_arlen_o              (cpu_d_arlen        ),
    .axi_d_arburst_o            (cpu_d_arburst      ),
    .axi_d_araddr_o             (cpu_d_araddr       ),
    .axi_d_arvalid_o            (cpu_d_arvalid      ),
    .axi_d_arready_i            (cpu_d_arready      ),
    .axi_d_rid_i                (cpu_d_rid          ),
    .axi_d_rvalid_i             (cpu_d_rvalid       ),
    .axi_d_rready_o             (cpu_d_rready       ),
    .axi_d_rdata_i              (cpu_d_rdata        ),
    .axi_d_rresp_i              (cpu_d_rresp        ),
    .axi_d_rlast_i              (cpu_d_rlast        ),
    //.axi_d_wid_o                (cpu_d_wid          ),
    .axi_d_wvalid_o             (cpu_d_wvalid       ),
    .axi_d_wready_i             (cpu_d_wready       ),
    .axi_d_wstrb_o              (cpu_d_wstrb        ),
    .axi_d_wdata_o              (cpu_d_wdata        ),
    .axi_d_wlast_o              (cpu_d_wlast        ),
    .axi_d_bid_i                (cpu_d_bid          ),
    .axi_d_bready_o             (cpu_d_bready       ),
    .axi_d_bvalid_i             (cpu_d_bvalid       ),
    .axi_d_bresp_i              (cpu_d_bresp        )
);

assign cpu_i_wid      = 4'h0;
assign cpu_i_awsize   = 3'h2;
assign cpu_i_awqos    = 4'h0;
assign cpu_i_awregion = 4'h0;
assign cpu_i_awcache  = 4'h0;
assign cpu_i_awsize   = 3'h2;
assign cpu_i_awprot   = 3'h0;
assign cpu_i_awlock   = 1'b0;
assign cpu_i_arsize   = 3'h2;
assign cpu_i_arqos    = 4'h0;
assign cpu_i_arregion = 4'h0;
assign cpu_i_arcache  = 4'h0;
assign cpu_i_arprot   = 3'h0;
assign cpu_i_arlock   = 1'b0;
assign cpu_d_wid      = 4'h0;
assign cpu_d_awsize   = 3'h2;
assign cpu_d_awqos    = 4'h0;
assign cpu_d_awregion = 4'h0;
assign cpu_d_awcache  = 4'h0;
assign cpu_d_awprot   = 3'h0;
assign cpu_d_awlock   = 1'b0;
assign cpu_d_arsize   = 3'h2;
assign cpu_d_arqos    = 4'h0;
assign cpu_d_arregion = 4'h0;
assign cpu_d_arcache  = 4'h0;
assign cpu_d_arprot   = 3'h0;
assign cpu_d_arlock   = 1'b0;

axi_bus_m2s4 u_axibus_m2s4 (
    .ACLK                       (soc_clk            ),
    .ARESETn                    (soc_rst_n          ),
    .M0_MID                     (4'h0               ),
    .M0_AWID                    (cpu_i_awid         ),
    .M0_AWADDR                  (cpu_i_awaddr       ),
    .M0_AWLEN                   (cpu_i_awlen        ),
    .M0_AWLOCK                  (cpu_i_awlock       ),
    .M0_AWSIZE                  (cpu_i_awsize       ),
    .M0_AWBURST                 (cpu_i_awburst      ),
    .M0_AWCACHE                 (cpu_i_awcache      ),
    .M0_AWPROT                  (cpu_i_awprot       ),
    .M0_AWVALID                 (cpu_i_awvalid      ),
    .M0_AWREADY                 (cpu_i_awready      ),
    .M0_AWQOS                   (cpu_i_awqos        ),
    .M0_AWREGION                (cpu_i_awregion     ),
    .M0_WID                     (cpu_i_wid          ),
    .M0_WDATA                   (cpu_i_wdata        ),
    .M0_WSTRB                   (cpu_i_wstrb        ),
    .M0_WLAST                   (cpu_i_wlast        ),
    .M0_WVALID                  (cpu_i_wvalid       ),
    .M0_WREADY                  (cpu_i_wready       ),
    .M0_BID                     (cpu_i_bid          ),
    .M0_BRESP                   (cpu_i_bresp        ),
    .M0_BVALID                  (cpu_i_bvalid       ),
    .M0_BREADY                  (cpu_i_bready       ),
    .M0_ARID                    (cpu_i_arid         ),
    .M0_ARADDR                  (cpu_i_araddr       ),
    .M0_ARLEN                   (cpu_i_arlen        ),
    .M0_ARLOCK                  (cpu_i_arlock       ),
    .M0_ARSIZE                  (cpu_i_arsize       ),
    .M0_ARBURST                 (cpu_i_arburst      ),
    .M0_ARCACHE                 (cpu_i_arcache      ),
    .M0_ARPROT                  (cpu_i_arprot       ),
    .M0_ARVALID                 (cpu_i_arvalid      ),
    .M0_ARREADY                 (cpu_i_arready      ),
    .M0_ARQOS                   (cpu_i_arqos        ),
    .M0_ARREGION                (cpu_i_arregion     ),
    .M0_RID                     (cpu_i_rid          ),
    .M0_RDATA                   (cpu_i_rdata        ),
    .M0_RRESP                   (cpu_i_rresp        ),
    .M0_RLAST                   (cpu_i_rlast        ),
    .M0_RVALID                  (cpu_i_rvalid       ),
    .M0_RREADY                  (cpu_i_rready       ),
    .M1_MID                     (4'h1               ),
    .M1_AWID                    (cpu_d_awid         ),
    .M1_AWADDR                  (cpu_d_awaddr       ),
    .M1_AWLEN                   (cpu_d_awlen        ),
    .M1_AWLOCK                  (cpu_d_awlock       ),
    .M1_AWSIZE                  (cpu_d_awsize       ),
    .M1_AWBURST                 (cpu_d_awburst      ),
    .M1_AWCACHE                 (cpu_d_awcache      ),
    .M1_AWPROT                  (cpu_d_awprot       ),
    .M1_AWVALID                 (cpu_d_awvalid      ),
    .M1_AWREADY                 (cpu_d_awready      ),
    .M1_AWQOS                   (cpu_d_awqos        ),
    .M1_AWREGION                (cpu_d_awregion     ),
    .M1_WID                     (cpu_d_wid          ),
    .M1_WDATA                   (cpu_d_wdata        ),
    .M1_WSTRB                   (cpu_d_wstrb        ),
    .M1_WLAST                   (cpu_d_wlast        ),
    .M1_WVALID                  (cpu_d_wvalid       ),
    .M1_WREADY                  (cpu_d_wready       ),
    .M1_BID                     (cpu_d_bid          ),
    .M1_BRESP                   (cpu_d_bresp        ),
    .M1_BVALID                  (cpu_d_bvalid       ),
    .M1_BREADY                  (cpu_d_bready       ),
    .M1_ARID                    (cpu_d_arid         ),
    .M1_ARADDR                  (cpu_d_araddr       ),
    .M1_ARLEN                   (cpu_d_arlen        ),
    .M1_ARLOCK                  (cpu_d_arlock       ),
    .M1_ARSIZE                  (cpu_d_arsize       ),
    .M1_ARBURST                 (cpu_d_arburst      ),
    .M1_ARCACHE                 (cpu_d_arcache      ),
    .M1_ARPROT                  (cpu_d_arprot       ),
    .M1_ARVALID                 (cpu_d_arvalid      ),
    .M1_ARREADY                 (cpu_d_arready      ),
    .M1_ARQOS                   (cpu_d_arqos        ),
    .M1_ARREGION                (cpu_d_arregion     ),
    .M1_RID                     (cpu_d_rid          ),
    .M1_RDATA                   (cpu_d_rdata        ),
    .M1_RRESP                   (cpu_d_rresp        ),
    .M1_RLAST                   (cpu_d_rlast        ),
    .M1_RVALID                  (cpu_d_rvalid       ),
    .M1_RREADY                  (cpu_d_rready       ),
    .S0_AWID                    (ram_awid           ),
    .S0_AWADDR                  (ram_awaddr         ),
    .S0_AWLEN                   (ram_awlen          ),
    .S0_AWLOCK                  (ram_awlock         ),
    .S0_AWSIZE                  (ram_awsize         ),
    .S0_AWBURST                 (ram_awburst        ),
    .S0_AWCACHE                 (ram_awcache        ),
    .S0_AWPROT                  (ram_awprot         ),
    .S0_AWVALID                 (ram_awvalid        ),
    .S0_AWREADY                 (ram_awready        ),
    .S0_AWQOS                   (ram_awqos          ),
    .S0_AWREGION                (ram_awregion       ),
    .S0_WID                     (ram_wid            ),
    .S0_WDATA                   (ram_wdata          ),
    .S0_WSTRB                   (ram_wstrb          ),
    .S0_WLAST                   (ram_wlast          ),
    .S0_WVALID                  (ram_wvalid         ),
    .S0_WREADY                  (ram_wready         ),
    .S0_BID                     (ram_bid            ),
    .S0_BRESP                   (ram_bresp          ),
    .S0_BVALID                  (ram_bvalid         ),
    .S0_BREADY                  (ram_bready         ),
    .S0_ARID                    (ram_arid           ),
    .S0_ARADDR                  (ram_araddr         ),
    .S0_ARLEN                   (ram_arlen          ),
    .S0_ARLOCK                  (ram_arlock         ),
    .S0_ARSIZE                  (ram_arsize         ),
    .S0_ARBURST                 (ram_arburst        ),
    .S0_ARCACHE                 (ram_arcache        ),
    .S0_ARPROT                  (ram_arprot         ),
    .S0_ARVALID                 (ram_arvalid        ),
    .S0_ARREADY                 (ram_arready        ),
    .S0_ARQOS                   (ram_arqos          ),
    .S0_ARREGION                (ram_arregion       ),
    .S0_RID                     (ram_rid            ),
    .S0_RDATA                   (ram_rdata          ),
    .S0_RRESP                   (ram_rresp          ),
    .S0_RLAST                   (ram_rlast          ),
    .S0_RVALID                  (ram_rvalid         ),
    .S0_RREADY                  (ram_rready         ),
    .S1_AWID                    (),
    .S1_AWADDR                  (),
    .S1_AWLEN                   (),
    .S1_AWLOCK                  (),
    .S1_AWSIZE                  (),
    .S1_AWBURST                 (),
    .S1_AWCACHE                 (),
    .S1_AWPROT                  (),
    .S1_AWVALID                 (),
    .S1_AWREADY                 (1'b1               ),
    .S1_AWQOS                   (),
    .S1_AWREGION                (),
    .S1_WID                     (),
    .S1_WDATA                   (),
    .S1_WSTRB                   (),
    .S1_WLAST                   (),
    .S1_WVALID                  (),
    .S1_WREADY                  (1'b1               ),
    .S1_BID                     (8'h0               ),
    .S1_BRESP                   (2'h0               ),
    .S1_BVALID                  (1'b0               ),
    .S1_BREADY                  (),
    .S1_ARID                    (),
    .S1_ARADDR                  (),
    .S1_ARLEN                   (),
    .S1_ARLOCK                  (),
    .S1_ARSIZE                  (),
    .S1_ARBURST                 (),
    .S1_ARCACHE                 (),
    .S1_ARPROT                  (),
    .S1_ARVALID                 (),
    .S1_ARREADY                 (1'b1               ),
    .S1_ARQOS                   (),
    .S1_ARREGION                (),
    .S1_RID                     (8'h0               ),
    .S1_RDATA                   (32'h0              ),
    .S1_RRESP                   (2'h0               ),
    .S1_RLAST                   (1'b0               ),
    .S1_RVALID                  (1'b0               ),
    .S1_RREADY                  (),
    .S2_AWID                    (),
    .S2_AWADDR                  (),
    .S2_AWLEN                   (),
    .S2_AWLOCK                  (),
    .S2_AWSIZE                  (),
    .S2_AWBURST                 (),
    .S2_AWCACHE                 (),
    .S2_AWPROT                  (),
    .S2_AWVALID                 (),
    .S2_AWREADY                 (1'b1               ),
    .S2_AWQOS                   (),
    .S2_AWREGION                (),
    .S2_WID                     (),
    .S2_WDATA                   (),
    .S2_WSTRB                   (),
    .S2_WLAST                   (),
    .S2_WVALID                  (),
    .S2_WREADY                  (1'b1               ),
    .S2_BID                     (8'h0               ),
    .S2_BRESP                   (2'h0               ),
    .S2_BVALID                  (1'b0               ),
    .S2_BREADY                  (),
    .S2_ARID                    (),
    .S2_ARADDR                  (),
    .S2_ARLEN                   (),
    .S2_ARLOCK                  (),
    .S2_ARSIZE                  (),
    .S2_ARBURST                 (),
    .S2_ARCACHE                 (),
    .S2_ARPROT                  (),
    .S2_ARVALID                 (),
    .S2_ARREADY                 (1'b1               ),
    .S2_ARQOS                   (),
    .S2_ARREGION                (),
    .S2_RID                     (8'h0               ),
    .S2_RDATA                   (32'h0              ),
    .S2_RRESP                   (2'h0               ),
    .S2_RLAST                   (1'b0               ),
    .S2_RVALID                  (1'b0               ),
    .S2_RREADY                  (),
    .S3_AWID                    (),
    .S3_AWADDR                  (),
    .S3_AWLEN                   (),
    .S3_AWLOCK                  (),
    .S3_AWSIZE                  (),
    .S3_AWBURST                 (),
    .S3_AWCACHE                 (),
    .S3_AWPROT                  (),
    .S3_AWVALID                 (),
    .S3_AWREADY                 (1'b1               ),
    .S3_AWQOS                   (),
    .S3_AWREGION                (),
    .S3_WID                     (),
    .S3_WDATA                   (),
    .S3_WSTRB                   (),
    .S3_WLAST                   (),
    .S3_WVALID                  (),
    .S3_WREADY                  (1'b1               ),
    .S3_BID                     (8'h0               ),
    .S3_BRESP                   (2'h0               ),
    .S3_BVALID                  (1'b0               ),
    .S3_BREADY                  (),
    .S3_ARID                    (),
    .S3_ARADDR                  (),
    .S3_ARLEN                   (),
    .S3_ARLOCK                  (),
    .S3_ARSIZE                  (),
    .S3_ARBURST                 (),
    .S3_ARCACHE                 (),
    .S3_ARPROT                  (),
    .S3_ARVALID                 (),
    .S3_ARREADY                 (1'b1               ),
    .S3_ARQOS                   (),
    .S3_ARREGION                (),
    .S3_RID                     (8'h0               ),
    .S3_RDATA                   (32'h0              ),
    .S3_RRESP                   (2'h0               ),
    .S3_RLAST                   (1'b0               ),
    .S3_RVALID                  (1'b0               ),
    .S3_RREADY                  ()
);

axi4_ram_bridge u_axi4ram (
    .clk_i                      (soc_clk            ),
    .rst_i                      (~soc_rst_n         ),
    .axi_arid_i                 (ram_arid           ),
    .axi_arburst_i              (ram_arburst        ),
    .axi_arlen_i                (ram_arlen          ),
    .axi_araddr_i               (ram_araddr         ),
    .axi_arvalid_i              (ram_arvalid        ),
    .axi_arready_o              (ram_arready        ),
    .axi_rid_o                  (ram_rid            ),
    .axi_rdata_o                (ram_rdata          ),
    .axi_rlast_o                (ram_rlast          ),
    .axi_rresp_o                (ram_rresp          ),
    .axi_rvalid_o               (ram_rvalid         ),
    .axi_rready_i               (ram_rready         ),
    .axi_awid_i                 (ram_awid           ),
    .axi_awburst_i              (ram_awburst        ),
    .axi_awlen_i                (ram_awlen          ),
    .axi_awaddr_i               (ram_awaddr         ),
    .axi_awvalid_i              (ram_awvalid        ),
    .axi_awready_o              (ram_awready        ),
    .axi_wstrb_i                (ram_wstrb          ),
    .axi_wdata_i                (ram_wdata          ),
    .axi_wlast_i                (ram_wlast          ),
    .axi_wvalid_i               (ram_wvalid         ),
    .axi_wready_o               (ram_wready         ),
    .axi_bid_o                  (ram_bid            ),
    .axi_bresp_o                (ram_bresp          ),
    .axi_bvalid_o               (ram_bvalid         ),
    .axi_bready_i               (ram_bready         ),
    .ram_wr_o                   (sram_wr            ),
    .ram_rd_o                   (sram_rd            ),
    .ram_addr_o                 (sram_addr          ),
    .ram_write_data_o           (sram_wdata         ),
    .ram_read_data_i            (sram_rdata         ),
    .ram_accept_i               (sram_accept        )
);

ram u_sram (
    .clk_i                      (soc_clk            ),
    .wr_i                       (sram_wr            ),
    .rd_i                       (sram_rd            ),
    .addr_i                     (sram_addr[13:2]    ),
    .data_i                     (sram_wdata         ),
    .data_o                     (sram_rdata         ),
    .accept_o                   (sram_accept        )
);

`ifdef XILINX
PS7SOC U_SOCBD (
    .FCLK_CLK0                  (soc_clk            ),
    .FCLK_RESET0_N              (soc_rst_n          ),
    .DDR_addr                   (DDR_addr           ),
    .DDR_ba                     (DDR_ba             ),
    .DDR_cas_n                  (DDR_cas_n          ),
    .DDR_ck_n                   (DDR_ck_n           ),
    .DDR_ck_p                   (DDR_ck_p           ),
    .DDR_cke                    (DDR_cke            ),
    .DDR_cs_n                   (DDR_cs_n           ),
    .DDR_dm                     (DDR_dm             ),
    .DDR_dq                     (DDR_dq             ),
    .DDR_dqs_n                  (DDR_dqs_n          ),
    .DDR_dqs_p                  (DDR_dqs_p          ),
    .DDR_odt                    (DDR_odt            ),
    .DDR_ras_n                  (DDR_ras_n          ),
    .DDR_reset_n                (DDR_reset_n        ),
    .DDR_we_n                   (DDR_we_n           ),
    .FIXED_IO_ddr_vrn           (FIXED_IO_ddr_vrn   ),
    .FIXED_IO_ddr_vrp           (FIXED_IO_ddr_vrp   ),
    .FIXED_IO_mio               (FIXED_IO_mio       ),
    .FIXED_IO_ps_clk            (FIXED_IO_ps_clk    ),
    .FIXED_IO_ps_porb           (FIXED_IO_ps_porb   ),
    .FIXED_IO_ps_srstb          (FIXED_IO_ps_srstb  ),
    .S_AXI_GP0_ACLK             (soc_clk            ),
    .S_AXI_GP0_arid             (soc_i_arid         ),
    .S_AXI_GP0_arlen            (soc_i_arlen        ),
    .S_AXI_GP0_arsize           (soc_i_arsize       ),
    .S_AXI_GP0_arburst          (soc_i_arburst      ),
    .S_AXI_GP0_arcache          (soc_i_arcache      ),
    .S_AXI_GP0_arlock           (soc_i_arlock       ),
    .S_AXI_GP0_arprot           (soc_i_arprot       ),
    .S_AXI_GP0_arqos            (soc_i_arqos        ),
    .S_AXI_GP0_araddr           (soc_i_araddr       ),
    .S_AXI_GP0_arready          (soc_i_arready      ),
    .S_AXI_GP0_arvalid          (soc_i_arvalid      ),
    .S_AXI_GP0_awid             (soc_i_awid         ),
    .S_AXI_GP0_awlen            (soc_i_awlen        ),
    .S_AXI_GP0_awsize           (soc_i_awsize       ),
    .S_AXI_GP0_awburst          (soc_i_awburst      ),
    .S_AXI_GP0_awcache          (soc_i_awcache      ),
    .S_AXI_GP0_awlock           (soc_i_awlock       ),
    .S_AXI_GP0_awprot           (soc_i_awprot       ),
    .S_AXI_GP0_awqos            (soc_i_awqos        ),
    .S_AXI_GP0_awaddr           (soc_i_awaddr       ),
    .S_AXI_GP0_awready          (soc_i_awready      ),
    .S_AXI_GP0_awvalid          (soc_i_awvalid      ),
    .S_AXI_GP0_bid              (soc_i_bid          ),
    .S_AXI_GP0_bvalid           (soc_i_bvalid       ),
    .S_AXI_GP0_bready           (soc_i_bready       ),
    .S_AXI_GP0_bresp            (soc_i_bresp        ),
    .S_AXI_GP0_rid              (soc_i_rid          ),
    .S_AXI_GP0_rready           (soc_i_rready       ),
    .S_AXI_GP0_rvalid           (soc_i_rvalid       ),
    .S_AXI_GP0_rdata            (soc_i_rdata        ),
    .S_AXI_GP0_rlast            (soc_i_rlast        ),
    .S_AXI_GP0_rresp            (soc_i_rresp        ),
    .S_AXI_GP0_wid              (soc_i_wid          ),
    .S_AXI_GP0_wstrb            (soc_i_wstrb        ),
    .S_AXI_GP0_wdata            (soc_i_wdata        ),
    .S_AXI_GP0_wready           (soc_i_wready       ),
    .S_AXI_GP0_wvalid           (soc_i_wvalid       ),
    .S_AXI_GP0_wlast            (soc_i_wlast        ),
    .S_AXI_GP1_ACLK             (soc_clk            ),
    .S_AXI_GP1_arid             (soc_d_arid         ),
    .S_AXI_GP1_arlen            (soc_d_arlen[3:0]   ),
    .S_AXI_GP1_arsize           (soc_d_arsize       ),
    .S_AXI_GP1_arburst          (soc_d_arburst      ),
    .S_AXI_GP1_arcache          (soc_d_arcache      ),
    .S_AXI_GP1_arlock           (soc_d_arlock       ),
    .S_AXI_GP1_arprot           (soc_d_arprot       ),
    .S_AXI_GP1_arqos            (soc_d_arqos        ),
    .S_AXI_GP1_araddr           (soc_d_araddr       ),
    .S_AXI_GP1_arready          (soc_d_arready      ),
    .S_AXI_GP1_arvalid          (soc_d_arvalid      ),
    .S_AXI_GP1_awid             (soc_d_awid         ),
    .S_AXI_GP1_awlen            (soc_d_awlen[3:0]   ),
    .S_AXI_GP1_awsize           (soc_d_awsize       ),
    .S_AXI_GP1_awburst          (soc_d_awburst      ),
    .S_AXI_GP1_awcache          (soc_d_awcache      ),
    .S_AXI_GP1_awlock           (soc_d_awlock       ),
    .S_AXI_GP1_awprot           (soc_d_awprot       ),
    .S_AXI_GP1_awqos            (soc_d_awqos        ),
    .S_AXI_GP1_awaddr           (soc_d_awaddr       ),
    .S_AXI_GP1_awready          (soc_d_awready      ),
    .S_AXI_GP1_awvalid          (soc_d_awvalid      ),
    .S_AXI_GP1_bid              (soc_d_bid          ),
    .S_AXI_GP1_bvalid           (soc_d_bvalid       ),
    .S_AXI_GP1_bready           (soc_d_bready       ),
    .S_AXI_GP1_bresp            (soc_d_bresp        ),
    .S_AXI_GP1_rid              (soc_d_rid          ),
    .S_AXI_GP1_rready           (soc_d_rready       ),
    .S_AXI_GP1_rvalid           (soc_d_rvalid       ),
    .S_AXI_GP1_rdata            (soc_d_rdata        ),
    .S_AXI_GP1_rlast            (soc_d_rlast        ),
    .S_AXI_GP1_rresp            (soc_d_rresp        ),
    .S_AXI_GP1_wid              (soc_d_wid          ),
    .S_AXI_GP1_wstrb            (soc_d_wstrb        ),
    .S_AXI_GP1_wdata            (soc_d_wdata        ),
    .S_AXI_GP1_wready           (soc_d_wready       ),
    .S_AXI_GP1_wvalid           (soc_d_wvalid       ),
    .S_AXI_GP1_wlast            (soc_d_wlast        ),
    .GPIO_tri_t                 (                   ),
    .GPIO_tri_i                 ({60'd0, KEY}       ),
    .GPIO_tri_o                 (gpio               )
);
`endif

endmodule

