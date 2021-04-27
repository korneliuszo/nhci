#include <iostream>
#include <fstream>
#include <backends/cxxrtl/cxxrtl_vcd.h>

#include "nhci-sim.hpp"

int main() {
	cxxrtl_design::p_top top;

	cxxrtl::debug_items all_debug_items;

	top.debug_info(all_debug_items);

    cxxrtl::vcd_writer vcd;
    vcd.timescale(1, "us");

    vcd.add_without_memories(all_debug_items);

    std::ofstream waves("waves.vcd");

	top.step();

    vcd.sample(0);

	for (int cycle = 1; cycle < 1000; ++cycle) {

		top.p_clk__26.set<bool>(!top.p_clk__26.get<bool>());
		top.step();
		vcd.sample(cycle);

        waves << vcd.buffer;
        vcd.buffer.clear();
	}
}
