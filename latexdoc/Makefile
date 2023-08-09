default: build

build:
	pdflatex -shell-escape main.tex
	biber main
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex

clean:
	-rm *.aux 
	-rm *.log 
	-rm *.lof 
	-rm *.bbl 
	-rm *.blg 
	-rm *.lot 
	-rm *.out 
	-rm *.toc 
	-rm *.bcf 
	-rm *.run.xml 
	-rm *.blx.bib 
