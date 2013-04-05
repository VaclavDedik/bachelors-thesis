.PHONY: all bp clean

all: bp

bp: 
	pdflatex -interaction=nonstopmode -synctex=1 index.tex
	bibtex index.aux
	pdflatex -interaction=nonstopmode -synctex=1 index.tex > /dev/null
	pdflatex -interaction=nonstopmode -synctex=1 index.tex > /dev/null
	mv index.pdf bp.pdf

start: bp
	evince bp.pdf

clean:
	rm -rf *.{log,out,pdf,aux,tfm,600pk,514pk,fls,toc,bbl,blg,fdb_latexmk,synctex.gz}
