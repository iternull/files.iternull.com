#!/usr/bin/env python

# extract files from Android thumbdata3 file
#
# Used: 
#   ./thumbdata.py .thumbdata

import sys

filename = sys.argv[1]

f=open(filename,'rb')
tdata = f.read()
f.close()

ss = '\xff\xd8'
se = '\xff\xd9'

count = 0
start = 0
while True:
    x1 = tdata.find(ss,start)
    if x1 < 0:
        break
    x2 = tdata.find(se,x1)
    jpg = tdata[x1:x2+1]
    count += 1
    fname = 'extracted_%d.jpg' % (count)
    fw = open(fname,'wb')
    fw.write(jpg)
    fw.close()
    start = x2+2
