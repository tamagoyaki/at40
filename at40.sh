#!/bin/bash
#

IFS=$','
CHS="quit,at40,classic"

select ch in $CHS; do
	if [ "$ch" = "quit" ]; then
	    exit
	elif [ "$ch" = "at40" ]; then
	    mplayer -loop 0 -playlist http://americantop40.akacast.akamaistream.net/7/785/58084/v1/auth.akacast.akamaistream.net/americantop40.m3u
	elif [ "$ch" = "classic" ]; then
	    mplayer -loop 0 http://at70-fl.ng.akacast.akamaistream.net:80/7/763/234624/v1/auth.akacast.akamaistream.net/at70-fl
	fi
done
