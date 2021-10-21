`timescale 1ns/1ns
module riscv_sopc_tb;

reg         clk;
reg         rst;

riscv_sopc u_dut (
    .clk        (clk        ),
    .rst        (rst        ),
    .key        (),
    .pio        ()
);

initial forever #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 0;
    repeat(4) @(posedge clk);
    rst = 1;
    repeat(100000) @(posedge clk);
    $finish;
end

initial begin
    $vcdplusfile("wave.vpd");
    $vcdpluson();
end

endmodule
