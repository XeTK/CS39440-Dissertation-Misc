pdflatex -draftmode dissertation
bibtex dissertation # or biber
makeindex dissertation.idx # if needed
makeindex -s style.gls ...# for glossary if needed
pdflatex -draftmode dissertation
pdflatex dissertation
open *.pdf
