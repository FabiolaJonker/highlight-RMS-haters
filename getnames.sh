#!/bin/sh
dst="styles.css"
curl "https://github.com/rms-open-letter/rms-open-letter.github.io/network/members" \
	| grep 'a class="" data-hovercard-type="user"' | sed "s/^.*>\(.*\)<.*$/\1/g" \
	| awk -f script.awk > $dst
