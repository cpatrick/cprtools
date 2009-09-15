#!/usr/bin/env python

import sys
import os

text_extensions = (".txt",".cmake",".cxx",".txx",".h",".c",".py",".cpp",".sh",".xml",".cu",".bvh",".ui",".m",".html",".css")


curpath = ""
if len(sys.argv) == 1:
  curpath = "."
else:
  curpath = sys.argv[1]

# Set basic things for text
for root, dirs, files in os.walk( curpath ):
  for file in [f for f in files if f.endswith(text_extensions)]:
    os.system('svn propset svn:mime-type text/plain ' + os.path.join(root,file))
    os.system('svn propset svn:eol-style native ' + os.path.join(root,file))
