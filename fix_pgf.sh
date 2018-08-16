#!/bin/bash

# Fix $1.tex
sed -i -e 's/\\\$/\$/g' ../$1.tex

sed -i -e 's/\\ensuremath{\\backslash}/\\/g' ../$1.tex

sed -i -e 's/\\\^{}/\^/g' ../$1.tex

sed -i -e 's/\\}/}/g' ../$1.tex

sed -i -e 's/\\{/{/g' ../$1.tex

sed -i -e 's/\\_/\_/g' ../$1.tex

sed -i -e 's/\$\(.*\)\$/\$ \\displaystyle \1\$/g' ../$1.tex

sed -i -e 's/\\pgfsetarrowsend{latex}/\\pgfsetarrowsend{Triangle[scale=1.5pt]}/g' ../$1.tex


