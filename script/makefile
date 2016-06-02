.include "../makefile"


pdf_viewer = mupdf
notes_pdf = notes.pdf


.PHONY: all
all: ${notes_pdf}

.PHONY: view
view: ${notes_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}

${notes_pdf}: notes.cls images
