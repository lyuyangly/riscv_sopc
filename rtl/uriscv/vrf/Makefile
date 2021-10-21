# Makefile For VCS

export PRJ_PATH=$(shell pwd)/..

all:
	@echo "VCS Verification ENV"

RTL_DIR = ../rtl .
SRC_V   = $(foreach src,$(RTL_DIR),$(wildcard $(src)/*.v))

cmp:
	@vcs -LDFLAGS -Wl,--no-as-needed -timescale=1ns/1ns -debug_all +lint=TFIPC-L +lint=PCWM -sverilog +incdir+../rtl/ +incdir+. ${SRC_V} -top tb_top

run:
	@./simv

dve:
	@dve -vpd wave.vpd &

clean:
	@rm -rf ucli.key csrc simv simv.daidir DVEfiles wave.vpd

