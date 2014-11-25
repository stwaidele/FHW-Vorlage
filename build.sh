#! /bin/bash

rm *.aux *.log *.bbl *.pyg *.out *.blg *.toc

/usr/texbin/pdflatex --shell-escape $1 &&
/usr/texbin/bibtex $1 &&
/usr/texbin/bibtex web &&
/usr/texbin/pdflatex --shell-escape $1 &&
/usr/texbin/bibtex $1 &&
/usr/texbin/bibtex web &&
/usr/texbin/pdflatex --shell-escape $1 &&
/usr/texbin/bibtex $1 &&
/usr/texbin/bibtex web &&
open $1.pdf