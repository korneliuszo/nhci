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
		rom.v
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
		sim.v
	${COMMON_TOP}
)


find_package(Boost 1.45.0 COMPONENTS program_options) 

include_directories(${BOOST_INCLUDE_DIRS})
add_executable(sim1
	sim1_main.cpp)
target_link_libraries(sim1 ${Boost_LIBRARIES})
target_link_libraries(sim1 nhci-sim)