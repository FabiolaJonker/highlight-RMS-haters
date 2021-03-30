#!/bin/sh
dst="styles.css"
# echo "[" > $dst
curl "https://github.com/rms-open-letter/rms-open-letter.github.io/network/members" \
	| grep 'a class="" data-hovercard-type="user"' | sed "s/^.*>\(.*\)<.*$/\1/g" \
	| awk -f script.awk > $dst
       	# | awk '{ printf ", a[href*=\"" $0 "\"]" }' > $dst
       	# | awk '{ print "{\n\"name\": \"\",\n\"link\": \"https://github.com/" $0 "\"\n}," }' >> $dst
# printf "%s" "{ content-before: 'a0'; content-after: 'a0'; background-color: crimson; color: black !important; }" >> $dst
# echo "]" >> $dst
