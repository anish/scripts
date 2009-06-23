#!/bin/sh
#set -x
if [ `pgrep $1` ] 
then
	kill -9 `pgrep $1`
else
	ps ax | egrep -i $1 | egrep -v grep | awk '{ print $1}' | sort -r | xargs -n1 kill -9
fi
