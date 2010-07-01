#!/bin/bash

ffmpeg -threads 16 -y -i ${1} -acodec aac -ar 48000 -ab 128k -ac 2 -s 640x480 -vcodec libx264 -b 1200k -flags +loop+mv4 -cmp 256 -partitions +parti4x4+partp8x8+partb8x8 -subq 7 -trellis 1 -refs 5 -coder 0 -me_range 16 -keyint_min 25 -sc_threshold 40 -i_qfactor 0.71 -bt 1200k -maxrate 1200k -bufsize 1200k -rc_eq 'blurCplx^(1-qComp)' -qcomp 0.6 -qmin 10 -qmax 51 -qdiff 4 -level 30 -aspect 4:3 -r 30 -g 90 -async 2 ${1%\.*}.mp4
