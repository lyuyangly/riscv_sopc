module rst_sync (
    input           clk,
    input           rst_i,
    output          rst_o
);

reg     [2:0]   rst_sync_q;

always @(posedge clk or negedge rst_i)
    if (~rst_i)
        rst_sync_q <= 3'h0;
    else
        rst_sync_q <= {rst_sync_q[1:0], 1'b1};

assign rst_o = rst_sync_q[2];

endmodule
