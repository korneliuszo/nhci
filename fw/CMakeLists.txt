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

find_package(verilator HINTS $ENV{VERILATOR_ROOT} ${VERILATOR_ROOT})
add_executable(sim1 sim1_main.cpp)
verilate(sim1 
	SOURCES
		top.v
	INCLUDE_DIRS
		$ENV{HOME}/.apio/packages/toolchain-verilator/share
)
