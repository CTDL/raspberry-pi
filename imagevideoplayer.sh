#!/bin/bash
ext_len=4
pix_str=".jpg"
vid_str=".mp4"
shopt -s  extglob #extended shell pattern enable
 for i in $( ls @(*.jpg|*.mp4)); do
        echo  $i
	pos_ext=${#i}-$ext_len
	echo $pos_ext
	ext_s=${i:pos_ext:4}
	echo $ext_s
	if [ "$ext_s" == "$pix_str" ];
	then
		echo "picture_file"
		./image.sh $i
		sleep 2
	fi
	 if [ "$ext_s" == "$vid_str" ];
        then
                echo "video_file"
		./playhdmi.sh $i
        fi
  done
#ls @(*.jpg|*.odp)
#ls *.jpg
