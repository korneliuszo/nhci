cmake_minimum_required(VERSION 3.10)

include(ice40-cmake/ice40.cmake)

project(nhci)

set(COMMON_TOP
	YOSYS_PATH
		~/fpga-toolchain/bin/
	NEXTPNR_PATH
		~/fpga-toolchain/bin/
	ICEPACK_PATH
		~/fpga-toolchain/bin/
	VERILOG_DEPENDS
		pll.v
		top.v
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
	TOP_LEVEL_VERILOG
		ic.v
)

ice40_sim(
	TARGET
		nhci-sim
	TOP_LEVEL_VERILOG
		top.v
	${COMMON_TOP}
)

add_executable(sim1
	sim1_main.cpp)
target_link_libraries(sim1 nhci-sim)