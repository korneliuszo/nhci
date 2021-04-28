from pcmciahost.scripts import pcmciaconn
import pty
import subprocess
import sys
import os
import signal

bdir = sys.argv[1]

master_fd, slave_name=pty.master_open()


proc=subprocess.Popen(["./sim1", "attr.vcd"], 
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

f=open(bdir+"/attr.bin-read","wb")
it = p.readattrit()
while True:
    t=[]
    t.append(next(it))
    if t[0]==0xff:
        f.write(bytes(t))
        break
    l=next(it)
    t.append(l)
    for a in range(l):
        t.append(next(it))
    f.write(bytes(t))

p.s.write(b'\xff')
proc.wait()