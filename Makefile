STANDALONE = StandaloneDoc
EMBEDDED = EmbeddedDoc
DOCUMENT = EmbeddedDoc

.PHONY: all standalone embedded doc single bib clean

standalone: DOCUMENT=$(STANDALONE)
embedded: DOCUMENT=$(EMBEDDED)

all:	standalone embedded

standalone: single bib doc clean

embedded: single bib doc clean

doc:
	pdflatex $(DOCUMENT).tex
	pdflatex $(DOCUMENT).tex
	pdflatex $(DOCUMENT).tex

single:
	pdflatex $(DOCUMENT).tex

bib:
	bibtex $(DOCUMENT).aux

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof
