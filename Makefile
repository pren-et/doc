BLDC_STANDALONE     = BLDC_StandaloneDoc
BLDC_EMBEDDED       = BLDC_EmbeddedDoc
STEPPER_STANDALONE  = Stepper_StandaloneDoc
STEPPER_EMBEDDED    = Stepper_EmbeddedDoc
DC_STANDALONE       = DC_StandaloneDoc
DC_EMBEDDED         = DC_EmbeddedDoc
RELEASE_DIR         = ./release

.PHONY: all all_log release release_log bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone dc_embedded release_copy clean

all:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone clean

all_log:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone

release:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone release_copy clean

release_log:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone release_copy

bldc_standalone:
	pdflatex $(BLDC_STANDALONE).tex
	bibtex   $(BLDC_STANDALONE).aux
	pdflatex $(BLDC_STANDALONE).tex
	pdflatex $(BLDC_STANDALONE).tex
	pdflatex $(BLDC_STANDALONE).tex

bldc_embedded:
	pdflatex $(BLDC_EMBEDDED).tex
	bibtex   $(BLDC_EMBEDDED).aux
	pdflatex $(BLDC_EMBEDDED).tex
	pdflatex $(BLDC_EMBEDDED).tex
	pdflatex $(BLDC_EMBEDDED).tex

stepper_standalone:
	pdflatex $(STEPPER_STANDALONE).tex
	bibtex   $(STEPPER_STANDALONE).aux
	pdflatex $(STEPPER_STANDALONE).tex
	pdflatex $(STEPPER_STANDALONE).tex
	pdflatex $(STEPPER_STANDALONE).tex

stepper_embedded:
	pdflatex $(STEPPER_EMBEDDED).tex
	bibtex   $(STEPPER_EMBEDDED).aux
	pdflatex $(STEPPER_EMBEDDED).tex
	pdflatex $(STEPPER_EMBEDDED).tex
	pdflatex $(STEPPER_EMBEDDED).tex

dc_standalone:
	pdflatex $(DC_STANDALONE).tex
	bibtex   $(DC_STANDALONE).aux
	pdflatex $(DC_STANDALONE).tex
	pdflatex $(DC_STANDALONE).tex
	pdflatex $(DC_STANDALONE).tex

dc_embedded:
	pdflatex $(DC_EMBEDDED).tex
	bibtex   $(DC_EMBEDDED).aux
	pdflatex $(DC_EMBEDDED).tex
	pdflatex $(DC_EMBEDDED).tex
	pdflatex $(DC_EMBEDDED).tex

release_copy:
	cp *_StandaloneDoc.pdf $(RELEASE_DIR)/.

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof
