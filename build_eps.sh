#!/bin/bash
# $Id: build_eps, v 0.01 2018/08/16 Samuel Mergendahl Exp $
# Build an EPS file from a dia file
# usuage: 
# build_eps.sh <diafile without ext> <width in cm> <height in cm>

sed -i -e "30s/image/$1/" image.tex
sed -i -e "29s/width/$2/" image.tex
sed -i -e "29s/height/$3/" image.tex
mv image.tex $1.tex
./fix_pgf.sh $1
latex $1.tex
pdflatex $1.tex
./pdf2eps.sh 1 $1
rm -f $1.ilg $1.log $1.aux $1.blg $1.out $1.ps $1.gz $1.pdf $1.dvi 
mv $1-crop.eps ../$1.eps
mv $1.tex image.tex
sed -i -e "30s/$1/image/" image.tex
sed -i -e "29s/$2/width/" image.tex
sed -i -e "29s/$3/height/" image.tex
rm -f image.tex-e ../$1.tex-e
