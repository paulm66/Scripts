#!/bin/bash
IFS=`printf '\n\t'`
#IFS=$'\n'
if [ "${1}" = "" ]
then
  music_dir=~/Downloads
else
  music_dir=$1
fi

find $music_dir -name *.wma | while read f;
do
pathname=${f%/*};
echo "$pathname";
filename=${f##*/};
echo "$filename"
#newpathname=`sed 's/ /\\ /g' "$pathname"`;
cd $pathname;
echo $PWD

#cd $pathname
newfilename=`echo $filename | tr ' ' '_'`
mv $filename $newfilename;
ffmpeg -i $newfilename -acodec libmp3lame  `echo ${newfilename%.wma}`.mp3

#mplayer -vo null -vc dummy -af resample=44100 -ao pcm -ao pcm:waveheader "$newfilename" && lame -m s audiodump.wav -o `echo ${newfilename%.wma}`.mp3
#rm audiodump.wav
done;
