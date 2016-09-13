##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind

pdflatex: P4.tex
	pdflatex --synctex=1 P4.tex
	bibtex master
	pdflatex --synctex=1 P4.tex
	pdflatex --synctex=1 P4.tex
	rm -f $(OTHER) $(PS)
clean:
	rm -f $(OTHER) $(PS)
