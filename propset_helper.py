#!/usr/bin/env python

import sys
import os

if len(sys.argv) != 2:
  print "Usage: " + sys.argv[0] + "<filename>"
  sys.exit()
curpath = sys.argv[1]

# Set basic things for text
os.system('svn propset svn:mime-type text/plain ' + curpath)
os.system('svn propset svn:eol-style native ' + curpath)
