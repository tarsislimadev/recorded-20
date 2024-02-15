#!/usr/bin/sh

datetime=$( date +%Y%m%d%H%M%S )

seconds="20"

ffmpeg -f video4linux2 -i /dev/video0 "./files/output.${datetime}.mp4"

ffmpeg -sseof "-${seconds}" -i "./files/output.${datetime}.mp4" "./files/output.${datetime}.${seconds}.mp4"

ffplay "./files/output.${datetime}.${seconds}.mp4"
