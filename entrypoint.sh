#!/bin/sh -l

find . -maxdepth 1 | grep -E "$1" 
latexmk --version
find . -maxdepth 1 | grep -E "$1" | xargs -L1 latexmk -pdf

ls *.tex
ls *.pdf
