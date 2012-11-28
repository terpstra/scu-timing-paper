all:	scu-timing.pdf

scu-timing.pdf:	scu-timing.tex pdf.pdf
	pdflatex $<

pdf.eps:	plot.sh
	./$<

%.pdf:	%.eps
	epstopdf $<

clean:
	rm -f *.pdf *.log *.aux
