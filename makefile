all:
	latexmk -xelatex -latexoption='-halt-on-error' main

clean:
	rm -f *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 .*.lb *.pdf
	rm -f data/*.aux
	rm -f *.bbl *.fdb_latexmk *.blg
