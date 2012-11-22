all:	scu-timing.pdf

scu-timing.pdf:	scu-timing.tex
	pdflatex $<

clean:
	rm -f *.pdf *.log *.aux
