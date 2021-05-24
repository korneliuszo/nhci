#!/usr/bin/env python3
from pcmciahost.scripts import pcmciaconn, printattr, funcconfregs

p=pcmciaconn.PcmciaConn("/dev/ttyACM0")

print("sync")
p.sync()
print("Ping:", p.ping(34))
print("reset")
p.reset()
print("read")

f=p.readattrit()
_, attr = printattr.parse_iterator(f)
fcr = funcconfregs.FuncConfRegs(p,attr)

print(p.ready())

fcr.CONFIG_OPTION = 1
if (fcr.CONFIG_OPTION != 1):
    print("Wrong read from config register")
    exit(1)

def readreg(p,addr):
    p.writeio(0,addr<<3)
    p.readio(0)
    return p.readio(2)

def writereg(p,addr,reg):
    p.writeio(0,addr<<3| 0x02)
    p.writeio(2, reg)

print(p.ready())
writereg(p,17,0x18)
print(p.ready())
writereg(p,20,0x01)
print(readreg(p,20))
