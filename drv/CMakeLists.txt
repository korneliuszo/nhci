cmake_minimum_required(VERSION 3.10)

# set the project name
project(nhci)

add_custom_target(nhci.sys ALL
	COMMAND
	${CMAKE_C_COMPILER}	-Wl,--base-file,nhci.sys.base
	-Wl,--entry,_DriverEntry
	-nostartfiles -nostdlib
	-o nhci.sys.junk.tmp
	$<TARGET_OBJECTS:nhci>
	-lntoskrnl -lhal
	COMMAND
	${TOOLCHAIN_PREFIX}-dlltool --dllname nhci.sys
	--base-file nhci.sys.base 
	--output-exp nhci.sys.exp
	COMMAND
	${CMAKE_C_COMPILER} -Wl,--subsystem,native
	-Wl,--image-base,0x10000
	-Wl,--file-alignment,0x1000
	-Wl,--section-alignment,0x1000
	-Wl,--entry,_DriverEntry
	-Wl,nhci.sys.exp
	-mdll -nostartfiles -nostdlib
	-o nhci.sys
	$<TARGET_OBJECTS:nhci>
	-lntoskrnl -lhal
	COMMAND
	${CMAKE_STRIP} nhci.sys
	BYPRODUCTS
		nhci.sys.junk.tmp
		nhci.sys.base
		nhci.sys.exp
	OUTPUT
		nhci.sys
	DEPENDS
		nhci
)

add_dependencies(nhci.sys nhci)
add_library(nhci OBJECT nhci.c)
target_compile_definitions(nhci PUBLIC 
	WINVER=0x0400
	_WIN32_WINNT=0x0400
	)
target_include_directories(nhci PUBLIC
	"/usr/i486-w64-mingw32/i486-w64-mingw32/include/ddk")
