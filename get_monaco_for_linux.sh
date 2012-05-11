#!/bin/bash

# Script for downloading and installing Monaco on linux. This allows me to
# have an extremely similar emacs configuration on OS X and Linux.
#
# Found on: http://jorrel.blogspot.com/2007/11/monaco-on-ubuntu.html
# By Googling: install monaco ubuntu

wget http://jorrel.googlepages.com/Monaco_Linux.ttf
sudo mkdir /usr/share/fonts/truetype/custom
sudo mv Monaco_Linux.ttf /usr/share/fonts/truetype/custom/
sudo fc-cache -f -v
