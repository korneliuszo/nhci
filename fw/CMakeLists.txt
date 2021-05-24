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
		attr.list
		conf.v
		spi.v
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
	CXXRTL_OPTIMIZE
		0
	${COMMON_TOP}
)


find_package(Boost 1.60.0 COMPONENTS program_options) 

include_directories(${BOOST_INCLUDE_DIRS})
add_executable(sim1
	sim1_main.cpp)
target_link_libraries(sim1 ${Boost_LIBRARIES})
target_link_libraries(sim1 nhci-sim)

function(python_test)
	set(options)

	set(oneValueArgs
		PY_FILE
	)
	set(multiValueArgs OUTPUTS DEPENDS)
	cmake_parse_arguments(PY "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})
		
	FIND_PACKAGE(PythonInterp 3)
	add_custom_command(
		OUTPUT
			${PY_OUTPUTS}
		COMMAND
			${PYTHON_EXECUTABLE} ${PY_PY_FILE} ${CMAKE_CURRENT_BINARY_DIR}
		DEPENDS
			${PY_PY_FILE}
			${PY_DEPENDS}
			sim1		
		WORKING_DIRECTORY
			${CMAKE_CURRENT_SOURCE_DIR}

		)
	add_custom_target(${PY_PY_FILE}-run ALL
		DEPENDS
			${PY_OUTPUTS}
		)
endfunction()

python_test(
	PY_FILE
		attr.py
	OUTPUTS
		attr.vcd
		attr.bin-read
	)
python_test(
	PY_FILE
		conf.py
	OUTPUTS
		conf.vcd
	DEPENDS
		attr.bin-read
	)
python_test(
	PY_FILE
		spi.py
	OUTPUTS
		spi.vcd
	DEPENDS
		attr.bin-read
	)