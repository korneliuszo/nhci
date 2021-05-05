from pcmciahost.scripts import pcmciaconn, printattr, funcconfregs
import pty
import subprocess
import sys
import os
import signal

bdir = sys.argv[1]

master_fd, slave_name=pty.master_open()


proc=subprocess.Popen(["./sim1", "spi.vcd"], 
                 stdin=master_fd,stdout=master_fd,
                 stderr=sys.stderr.buffer,
                 cwd = bdir)

p=pcmciaconn.PcmciaConn(slave_name)

print("sync")
p.sync()
print("Ping:", p.ping(34))
print("reset")
p.reset()
print("read")

f=printattr.bytes_from_file(bdir+"/attr.bin-read")
_, attr = printattr.parse_iterator(f)
fcr = funcconfregs.FuncConfRegs(p,attr)

fcr.CONFIG_OPTION = 1
if (fcr.CONFIG_OPTION != 1):
    print("Wrong read from config register")
    exit(1)

p.writeio(2, 0x01)
print(p.readio(2))

p.writeio(0, 0x12)
p.writeio(2, 0x55)

p.writeio(0, 0x10)
print(p.readio(0))
print(p.readio(2))


p.s.write(b'\xff')
proc.wait()