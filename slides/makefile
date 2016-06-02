.include "../makefile"


pdf_viewer = mupdf -r 160
presentation_pdf = presentation.pdf


.PHONY: all
all: ${presentation_pdf} images

.PHONY: presentation
presentation: ${presentation_pdf}
	${pdf_viewer} ${.ALLSRC}

.PHONY: view
view: ${presentation_pdf}
	${pdf_viewer} ${.ALLSRC}

${presentation_pdf}: beamerthemettipresentation.sty images
