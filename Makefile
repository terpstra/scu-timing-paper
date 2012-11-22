all:	scu-timing.pdf

scu-timing.pdf:
	pdflatex scu-timing.tex

clean:
	rm -f *.pdf *.log *.aux
