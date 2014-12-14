BLDC_STANDALONE     = BLDC_StandaloneDoc
BLDC_EMBEDDED       = BLDC_EmbeddedDoc
STEPPER_STANDALONE  = Stepper_StandaloneDoc
STEPPER_EMBEDDED    = Stepper_EmbeddedDoc
DC_STANDALONE       = DC_StandaloneDoc
DC_EMBEDDED         = DC_EmbeddedDoc
DOCUMENT            = BLDC_EmbeddedDoc
RELEASE_DIR         = ./release

.PHONY: all standalone embedded doc single bib clean

bldc_standalone:    DOCUMENT=$(BLDC_STANDALONE)
bldc_embedded:      DOCUMENT=$(BLDC_EMBEDDED)
stepper_standalone: DOCUMENT=$(STEPPER_STANDALONE)
stepper_embedded:   DOCUMENT=$(STEPPER_EMBEDDED)
dc_standalone:      DOCUMENT=$(DC_STANDALONE)
dc_embedded:        DOCUMENT=$(DC_EMBEDDED)

all:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone


# bldc_standalone: single bib doc clean
# 
# bldc_embedded: single bib doc clean
# 
# stepper_standalone: single bib doc clean
# 
# stepper_embedded: single bib doc clean

bldc_standalone:
	pdflatex $(BLDC_STANDALONE).tex
	pdflatex $(BLDC_STANDALONE).tex
	pdflatex $(BLDC_STANDALONE).tex
	bibtex   $(BLDC_STANDALONE).aux
	pdflatex $(BLDC_STANDALONE).tex
	mv $(BLDC_STANDALONE).pdf $(RELEASE_DIR)/.

bldc_embedded:
	pdflatex $(BLDC_EMBEDDED).tex
	pdflatex $(BLDC_EMBEDDED).tex
	pdflatex $(BLDC_EMBEDDED).tex
	bibtex   $(BLDC_EMBEDDED).aux
	pdflatex $(BLDC_EMBEDDED).tex

stepper_standalone:
	pdflatex $(STEPPER_STANDALONE).tex
	pdflatex $(STEPPER_STANDALONE).tex
	pdflatex $(STEPPER_STANDALONE).tex
	bibtex   $(STEPPER_STANDALONE).aux
	pdflatex $(STEPPER_STANDALONE).tex
	mv $(STEPPER_STANDALONE).pdf $(RELEASE_DIR)/.

stepper_embedded:
	pdflatex $(STEPPER_EMBEDDED).tex
	pdflatex $(STEPPER_EMBEDDED).tex
	pdflatex $(STEPPER_EMBEDDED).tex
	bibtex   $(STEPPER_EMBEDDED).aux
	pdflatex $(STEPPER_EMBEDDED).tex

dc_standalone:
	pdflatex $(DC_STANDALONE).tex
	pdflatex $(DC_STANDALONE).tex
	pdflatex $(DC_STANDALONE).tex
	bibtex   $(DC_STANDALONE).aux
	pdflatex $(DC_STANDALONE).tex
	mv $(DC_STANDALONE).pdf $(RELEASE_DIR)/.

dc_embedded:
	pdflatex $(DC_EMBEDDED).tex
	pdflatex $(DC_EMBEDDED).tex
	pdflatex $(DC_EMBEDDED).tex
	bibtex   $(DC_EMBEDDED).aux
	pdflatex $(DC_EMBEDDED).tex

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
