#!/bin/sh
rm -rf ./video/*.mp4
mogrify -flip -format jpg ./frames/frame_*.ppm
ffmpeg -r 30 -i ./frames/frame_%04d.jpg ./video/output.mp4
ffmpeg -i ./video/output.mp4 -i ./video/videoplayback.mp3 -codec copy -shortest ./video/movie.mp4