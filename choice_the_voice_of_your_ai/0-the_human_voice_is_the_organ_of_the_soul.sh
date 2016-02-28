#!/bin/bash

voice=$2
message=$1
address=$3

filename=$(echo $1 | awk '{print $1}')

case $voice in
    f)
	say $message -v Ting-Ting -o $filename.m4a
	;;
    m)
	say $message -v Ralph -o $filename.m4a
	;;
    x)
	say $message -v Zuzana -o $filename.m4a
	;;
esac
echo 'Listen to the message on http://$address/$filename.m4a'
scp ./$filename.m4a admin@158.69.76.132:/usr/share/nginx/html/
