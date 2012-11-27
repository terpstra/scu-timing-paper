#! /bin/bash

gnuplot <<EOF
set terminal postscript eps color solid blacktext "Helvetica" 24
set output "pdf.eps"
set datafile separator ','
unset ytics
set xrange [0:250]
set xlabel "delay (us)"
set ylabel "Normalized PDF"
plot \
	'data/F1lm32 icache00000.txt' using ((\$1*1000000)):((\$2/881.0)) title "LM32" with lines, \
	'data/F1load rt00000.txt' using ((\$1*1000000)):((\$2/1042.0)) title "Kernel" with lines, \
	'data/F3load rt00000.txt' using ((\$1*1000000)):((\$2/334.0)) title "Userspace" with lines, \
	'data/F3fesa00000.txt' using ((\$1*1000000)):((\$2/186.0)) title "FESA" with lines
EOF
