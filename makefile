all:
	# Form feed
	pdflatex Resume.tex
	latex Resume.tex
	cp Resume.pdf Resume_VaarnanDrolia.pdf
