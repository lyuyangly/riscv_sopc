#include "verilated_vcd_sc.h"
#include "Vriscv_sopc.h"

SC_MODULE(rst_gen) {
    sc_in <bool> clk;
    sc_out<bool> rst_n;

    void generate_reset(void) {
        rst_n.write(0);
        wait(1,SC_NS);
        rst_n.write(0);
        wait(100,SC_NS);
        rst_n.write(1);
    };

    SC_CTOR(rst_gen) {
        sensitive << clk.neg();
        SC_THREAD(generate_reset);
    };
};

int sc_main(int argc, char **argv)
{
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VerilatedVcdSc* tfp = new VerilatedVcdSc;
    sc_clock clk("clk", 10, SC_NS, 0.5, 3, SC_NS, true);
    sc_signal<bool> rst_n;
    sc_signal<uint32_t> pio;
    sc_signal<uint32_t> key;
    Vriscv_sopc *top;
    rst_gen *rst;

    top = new Vriscv_sopc("top");
    rst = new rst_gen("rst");

    top->clk(clk);
    top->rst(rst_n);
    top->pio(pio);
    top->key(key);

    rst->clk(clk);
    rst->rst_n(rst_n);

    top->trace(tfp, 0);
    tfp->open("wave.vcd");

    if (!Verilated::gotFinish()) {
        sc_start(1, SC_MS);
    }

    tfp->close();
    delete top;
    delete rst;

    return 0;
}

