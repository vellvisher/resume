#!/bin/sh
#Form feed
pdflatex Resume.tex
latex Resume.tex
#|sed -re "s/I build.+\./I build stuff\./g"
catdvi -e 0 -U Resume.dvi | sed -re "s/([^^[:space:]])\s+/\1 /g"\
 |sed -e 's/^[ \t]*//' | sed -re "s/(\.( \.)+)$//g" | sed '1d'|iconv > Resume.txt
