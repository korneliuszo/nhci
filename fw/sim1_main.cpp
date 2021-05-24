#include <iostream>
#include <fstream>
#include <cstdio>
#include <stdint.h>
#include <boost/program_options.hpp>
#include <boost/endian/arithmetic.hpp>
#include <csignal>


#include <backends/cxxrtl/cxxrtl_vcd.h>

#include "nhci-sim.hpp"

namespace cxxrtl_design {

struct spi_slave: public bb_p_spi {
	std::array<uint8_t,32> regs =
	{

	};
	uint8_t irq = 0xaa;
	uint8_t *reg;
	uint8_t in_reg;
	enum class State {
		IRQ,
		RX,
		TX
	} state = State::IRQ;
	int bit;
	void reset() {};
	void miso_update()
	{
		p_MISO.next.set<bool>(*reg & (1<<bit));
	}
	bool eval() override {
		if (p_SS)
		{
			state = State::IRQ;
			reg = &irq;
			bit = 7;
			miso_update();
		}
		else
		{
			if (posedge_p_SCLK())
			{
				in_reg = (in_reg << 1) | !!(p_MOSI.get<bool>());
				bit--;
				if(bit == -1)
				{
					std::cerr << "Recv:" << (int)in_reg << "\n";
					bit = 7;
					switch(state)
					{
					default:
					case State:: IRQ:
						reg = &regs[in_reg>>3];
						state = (in_reg&0x02) ? State::TX : State::RX;
						break;
					case State::RX:
						reg++;
						break;
					case State::TX:
						*reg++ = in_reg;
					}
				}
			}
			if (negedge_p_SCLK())
			{
				miso_update();
			}
		}
		return bb_p_spi::eval();
	}
};

std::unique_ptr<bb_p_spi> bb_p_spi::create(std::string name,
		cxxrtl::metadata_map parameters, cxxrtl::metadata_map attributes) {
	return std::make_unique<spi_slave>();
}

}

class sim1{
	cxxrtl::vcd_writer vcd;
	cxxrtl_design::p_sim top;
	std::ofstream waves;
	cxxrtl::debug_items all_debug_items;
	int cycle;
public:
	sim1(const std::string & name)
		: waves(name)
		, cycle(0)
	{
		top.debug_info(all_debug_items);
	    vcd.timescale(1, "us");
	    vcd.add_without_memories(all_debug_items);
	}
	void update();
	void waitclk();
	void init_pcmcia();
	uint8_t read_attr(unsigned int addr);
	void write_attr(unsigned int addr,uint8_t val);
	uint8_t read_io(unsigned int addr);
	void write_io(unsigned int addr,uint8_t val);
	void set_reset(bool out);
	bool get_ready();
};


void sim1::update()
{
	top.step();
	cycle++;
	vcd.sample(cycle);
    waves << vcd.buffer;
    vcd.buffer.clear();
}

void sim1::waitclk()
{
	top.p_clk__52.set<bool>(!top.p_clk__52.get<bool>());
	update();
	top.p_clk__52.set<bool>(!top.p_clk__52.get<bool>());
	update();
	top.p_clk__52.set<bool>(!top.p_clk__52.get<bool>());
	update();
	top.p_clk__52.set<bool>(!top.p_clk__52.get<bool>());
	update();
	while(!top.p_WAIT.get<bool>())
	{
		top.p_clk__52.set<bool>(!top.p_clk__52.get<bool>());
		update();
	}
}

void sim1::init_pcmcia()
{
	top.p_RESET.set<bool>(1);
	top.p_CE1.set<bool>(1);
	top.p_CE2.set<bool>(1);
	top.p_REG.set<bool>(1);
	top.p_IOWR.set<bool>(1);
	top.p_IORD.set<bool>(1);
	top.p_OE.set<bool>(1);
	top.p_WE.set<bool>(1);
	update();
}

uint8_t sim1::read_attr(unsigned int addr)
{
	top.p_A.set<unsigned int>(addr);
	top.p_CE1.set<bool>(0);
	top.p_OE.set<bool>(0);
	top.p_REG.set<bool>(0);
	update();
	waitclk();
	uint8_t ret = top.p_D__out.get<uint8_t>();
	top.p_CE1.set<bool>(1);
	top.p_OE.set<bool>(1);
	top.p_REG.set<bool>(1);
	update();
	return ret;
}

void sim1::write_attr(unsigned int addr,uint8_t val)
{
	top.p_A.set<unsigned int>(addr);
	top.p_CE1.set<bool>(0);
	top.p_WE.set<bool>(0);
	top.p_REG.set<bool>(0);
	top.p_D__in.set<uint8_t>(val);
	update();
	waitclk();
	top.p_WE.set<bool>(1);
	update();
	top.p_CE1.set<bool>(1);
	top.p_REG.set<bool>(1);
	update();
}

uint8_t sim1::read_io(unsigned int addr)
{
	top.p_A.set<unsigned int>(addr);
	top.p_CE1.set<bool>(0);
	top.p_IORD.set<bool>(0);
	update();
	waitclk();
	uint8_t ret = top.p_D__out.get<uint8_t>();
	top.p_IORD.set<bool>(1);
	update();
	top.p_CE1.set<bool>(1);
	top.p_REG.set<bool>(1);
	update();
	waitclk();
	return ret;
}

void sim1::write_io(unsigned int addr,uint8_t val)
{
	top.p_A.set<unsigned int>(addr);
	top.p_CE1.set<bool>(0);
	top.p_IOWR.set<bool>(0);
	top.p_D__in.set<uint8_t>(val);
	update();
	waitclk();
	top.p_IOWR.set<bool>(1);
	update();
	top.p_CE1.set<bool>(1);
	top.p_REG.set<bool>(1);
	update();
	waitclk();
}

void sim1::set_reset(bool out)
{
	top.p_RESET.set<bool>(out);
	update();
}

bool sim1::get_ready()
{
	return top.p_READY.get<bool>();
}

namespace po = boost::program_options;

int main(int argc, char * argv[]) {

	po::options_description desc("Allowed options");
	desc.add_options()
	    ("help", "produce help message")
	    ("out-waveform", po::value<std::string>(), "output waveform")
	;

	po::positional_options_description p;
	p.add("out-waveform", -1);

	po::variables_map vm;
	po::store(po::command_line_parser(argc, argv)
		.options(desc).positional(p).run(),
		vm);
	po::notify(vm);

	if (vm.count("help")) {
	    std::cout << desc << "\n";
	    return 1;
	}

	if (!vm.count("out-waveform")) {
		std::cout << "need to specify output waveform file" << "\n";
	    return 1;
	}

	sim1 sim(vm["out-waveform"].as<std::string>());

    sim.init_pcmcia();

    bool looping = true;
    while(looping)
    {
    	uint8_t cmd;
    	std::fread(&cmd,1,1,stdin);
    	switch(cmd)
    	{
    	default:
    	case 0x00:
			break;
    	case 0x05: //PING
    	{
    		uint8_t ping;
    		std::fread(&ping,1,1,stdin);
    		std::fwrite(&ping,1,1,stdout);
    		break;
    	}
    	case 0x03: //GET_ATTR_MEMORY
    	{
    		boost::endian::big_int32_t addr;
    		std::fread(&addr,4,1,stdin);
    		uint8_t out = sim.read_attr(addr);
    		std::fwrite(&out,1,1,stdout);
    		break;
    	}
    	case 0x04: //SET_ATTR_MEMORY
    	{
    		boost::endian::big_int32_t addr;
    		uint8_t val;
    		std::fread(&addr,4,1,stdin);
    		std::fread(&val,1,1,stdin);
    		sim.write_attr(addr,val);
    		break;
    	}
    	case 0x07: //GET_IO8
    	{
    		boost::endian::big_int32_t addr;
    		std::fread(&addr,4,1,stdin);
    		uint8_t out = sim.read_io(addr);
    		std::fwrite(&out,1,1,stdout);
    		break;
    	}
    	case 0x08: //SET_IO_8
    	{
    		boost::endian::big_int32_t addr;
    		uint8_t val;
    		std::fread(&addr,4,1,stdin);
    		std::fread(&val,1,1,stdin);
    		sim.write_io(addr,val);
    		break;
    	}
    	case 0x02: //SET_RESET
    	{
    		uint8_t state;
    		std::fread(&state,1,1,stdin);
    		sim.set_reset(static_cast<bool>(state));
    		break;
    	}
    	case 0x06: //GET_READY
    	{
    		uint8_t out = sim.get_ready();
    		std::fwrite(&out,1,1,stdout);
    		break;
    	}
    	case 0xFF: //EXIT_SIM
    		looping = false;
    		sim.update();
    		std::cerr << "Closing" << "\n";
    		break;
    	}
    }
}
