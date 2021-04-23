cmake_minimum_required(VERSION 3.16)

include(ice40-cmake/ice40.cmake)

project(nhci)

ice40_synth(
	TARGET
		nhci
	TOP_LEVEL_VERILOG
		top.v
	PCF_FILE
		io.pcf
	YOSYS_PATH
		~/.apio/packages/toolchain-yosys/bin/
	NEXTPNR_PATH
		~/.apio/packages/toolchain-ice40/bin/
	ICEPACK_PATH
		~/.apio/packages/toolchain-ice40/bin/
	FPGA_TYPE
		hx8k
	FPGA_PKG
		ct256
)

