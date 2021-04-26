cmake_minimum_required(VERSION 3.10)

include(ice40-cmake/ice40.cmake)

project(nhci)

set(COMMON_TOP
	TOP_LEVEL_VERILOG
		top.v
	YOSYS_PATH
		~/.apio/packages/toolchain-yosys/bin/
	NEXTPNR_PATH
		~/.apio/packages/toolchain-ice40/bin/
	ICEPACK_PATH
		~/.apio/packages/toolchain-ice40/bin/
	VERILOG_DEPENDS
		pll.v
)

ice40_synth(
	TARGET
		nhci
	PCF_FILE
		io.pcf
	FPGA_TYPE
		hx8k
	FPGA_PKG
		ct256
	${COMMON_TOP}
)

