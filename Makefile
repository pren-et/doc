BLDC_STANDALONE     = BLDC_StandaloneDoc
BLDC_EMBEDDED       = BLDC_EmbeddedDoc
STEPPER_STANDALONE  = Stepper_StandaloneDoc
STEPPER_EMBEDDED    = Stepper_EmbeddedDoc
DC_STANDALONE       = DC_StandaloneDoc
DC_EMBEDDED         = DC_EmbeddedDoc
PREN_ET_EMBEDDED    = PREN-ET_EmbeddedDoc
REVIEW              = ET-Gruppe_Review
RELEASE_DIR         = ./release

.PHONY: all all_log release release_log bldc stepper dc bldc_log stepper_log dc_log bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone dc_embedded embedded bldc_standalone_log bldc_embedded_log stepper_standalone_log stepper_embedded_log dc_standalone_log dc_embedded_log embedded_log review review_log release_copy clean

all:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone embedded review  clean

all_log:	clean bldc_standalone_log bldc_embedded_log stepper_standalone_log stepper_embedded_log dc_standalone_log embedded_log review_log

release:	bldc_standalone bldc_embedded stepper_standalone stepper_embedded dc_standalone embedded review release_copy clean

release_log:	clean bldc_standalone_log bldc_embedded_log stepper_standalone_log stepper_embedded_log dc_standalone_log embedded_log review_log release_copy

bldc:	bldc_standalone bldc_embedded

stepper:	stepper_standalone stepper_embedded

dc:	dc_standalone dc_embedded

bldc_log:	clean bldc_standalone_log bldc_embedded_log

stepper_log:	clean stepper_standalone_log stepper_embedded_log

dc_log:	clean dc_standalone_log dc_embedded_log

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

embedded:
	pdflatex $(PREN_ET_EMBEDDED).tex
	bibtex   $(PREN_ET_EMBEDDED).aux
	pdflatex $(PREN_ET_EMBEDDED).tex
	pdflatex $(PREN_ET_EMBEDDED).tex
	pdflatex $(PREN_ET_EMBEDDED).tex

bldc_standalone_log:
	pdflatex $(BLDC_STANDALONE).tex     >> make.log
	bibtex   $(BLDC_STANDALONE).aux     >> make.log
	pdflatex $(BLDC_STANDALONE).tex     >> make.log
	pdflatex $(BLDC_STANDALONE).tex     >> make.log
	pdflatex $(BLDC_STANDALONE).tex     >> make.log

bldc_embedded_log:
	pdflatex $(BLDC_EMBEDDED).tex       >> make.log
	bibtex   $(BLDC_EMBEDDED).aux       >> make.log
	pdflatex $(BLDC_EMBEDDED).tex       >> make.log
	pdflatex $(BLDC_EMBEDDED).tex       >> make.log
	pdflatex $(BLDC_EMBEDDED).tex       >> make.log

stepper_standalone_log:
	pdflatex $(STEPPER_STANDALONE).tex  >> make.log
	bibtex   $(STEPPER_STANDALONE).aux  >> make.log
	pdflatex $(STEPPER_STANDALONE).tex  >> make.log
	pdflatex $(STEPPER_STANDALONE).tex  >> make.log
	pdflatex $(STEPPER_STANDALONE).tex  >> make.log

stepper_embedded_log:
	pdflatex $(STEPPER_EMBEDDED).tex    >> make.log
	bibtex   $(STEPPER_EMBEDDED).aux    >> make.log
	pdflatex $(STEPPER_EMBEDDED).tex    >> make.log
	pdflatex $(STEPPER_EMBEDDED).tex    >> make.log
	pdflatex $(STEPPER_EMBEDDED).tex    >> make.log

dc_standalone_log:
	pdflatex $(DC_STANDALONE).tex       >> make.log
	bibtex   $(DC_STANDALONE).aux       >> make.log
	pdflatex $(DC_STANDALONE).tex       >> make.log
	pdflatex $(DC_STANDALONE).tex       >> make.log
	pdflatex $(DC_STANDALONE).tex       >> make.log

dc_embedded_log:
	pdflatex $(DC_EMBEDDED).tex         >> make.log
	bibtex   $(DC_EMBEDDED).aux         >> make.log
	pdflatex $(DC_EMBEDDED).tex         >> make.log
	pdflatex $(DC_EMBEDDED).tex         >> make.log
	pdflatex $(DC_EMBEDDED).tex         >> make.log

embedded_log:
	pdflatex $(PREN_ET_EMBEDDED).tex    >> make.log
	bibtex   $(PREN_ET_EMBEDDED).aux    >> make.log
	pdflatex $(PREN_ET_EMBEDDED).tex    >> make.log
	pdflatex $(PREN_ET_EMBEDDED).tex    >> make.log
	pdflatex $(PREN_ET_EMBEDDED).tex    >> make.log

review:
	pdflatex $(REVIEW).tex
	#bibtex   $(REVIEW).aux
	pdflatex $(REVIEW).tex
	pdflatex $(REVIEW).tex
	pdflatex $(REVIEW).tex

review_log:
	pdflatex $(REVIEW).tex    >> make.log
	#bibtex   $(REVIEW).aux    >> make.log
	pdflatex $(REVIEW).tex    >> make.log
	pdflatex $(REVIEW).tex    >> make.log
	pdflatex $(REVIEW).tex    >> make.log

release_copy:
	cp *_StandaloneDoc.pdf $(RELEASE_DIR)/.
	#cp *_EmbeddedDoc.pdf $(RELEASE_DIR)/.

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof
