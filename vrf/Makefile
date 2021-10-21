# Makefile For Verification

export DESIGN=riscv_sopc

all:
	@echo "cmp/run/dve/clean"

lint:
	verilator -Wno-fatal -f ../rtl/filelist/filelist.f --top-module $(DESIGN) --lint-only

verilator:
	verilator -Wno-fatal -f ../rtl/filelist/filelist.f --top-module $(DESIGN) --sc sc_main.cpp --trace --exe
	make -C obj_dir -f V$(DESIGN).mk V$(DESIGN)

verilator_run:
	./obj_dir/V$(DESIGN)

cmp:
	@vcs -LDFLAGS -Wl,--no-as-needed -debug_pp +lint=TFIPC-L +lint=PCWM ./riscv_sopc_tb.v -f ../rtl/filelist/filelist.f -top riscv_sopc_tb -l vcs.log

run:
	@./simv -l simv.log

dve:
	@dve -vpd *.vpd &

wave:
	gtkwave wave.vcd &

clean:
	@rm -rf ucli.key csrc simv simv.daidir vcs.log simv.log *.vpd DVEfiles obj_dir wave.vcd

