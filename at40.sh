#!/bin/bash
#

IFS=$','
CHS="quit,at40,classic"

select ch in $CHS; do
	if [ "$ch" = "quit" ]; then
	    exit
	elif [ "$ch" = "at40" ]; then
	    mplayer -loop 0 -playlist http://c2.prod.playlists.ihrhls.com/4802/playlist.m3u8
	elif [ "$ch" = "classic" ]; then
	    mplayer -loop 0 -playlist http://c9.prod.playlists.ihrhls.com/6545/playlist.m3u8
	fi
done
