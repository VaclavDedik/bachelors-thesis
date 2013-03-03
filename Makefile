.PHONY: all bp clean

all: bp

bp: bp.pdf

bp.pdf: index.tex
	pdflatex index.tex
	mv index.pdf bp.pdf

start: bp
	evince bp.pdf

clean:
	rm -rf *.log *.out *.pdf *.aux *.tfm *.600pk *.514pk *.fls *.toc
