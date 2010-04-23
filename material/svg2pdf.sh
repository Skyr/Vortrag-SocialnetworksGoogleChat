#!/bin/bash
while [ $# -gt 0 ] ; do
	if [ -f "$1" ] ; then
		FNAME=`echo $1 | sed "s/\.svg//i"`
		inkscape -z -f "$1" -A "${FNAME}.pdf"
		#inkscape -z -f "$1" -E "${FNAME}.eps"
		#epstopdf "${FNAME}.eps" "${FNAME}.pdf"
	fi
	shift
done

