#!/bin/sh
#Form feed
pdflatex Resume.tex
latex Resume.tex
#|sed -re "s/I build.+\./I build stuff\./g"
catdvi -e 0 -U Resume.dvi | sed -re "s/([^^[:space:]])\s+/\1 /g"\
|sed -e 's/^[ \t]*//' | sed -re "s/(\.( \.)+)$//g" | sed '1d'|sed -re "s/○/•/g" \
|sed -e 's/�/☎/g' | sed -re "s///g" |sed -re "s/ﬀ/ff/g" | sed -re "s/ﬂ/fl/g" |iconv > Resume.txt
