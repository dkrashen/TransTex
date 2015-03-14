ttex = ../ttex
datafile = metavita.yml
tex = pdflatex
junk = *.aux *.log *.out

all: 
	$(ttex) vita.ttex $(datafile) vita.tex
	$(tex) vita
	$(tex) vita
	rm $(junk)

