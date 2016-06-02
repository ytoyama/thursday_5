rm = rm -rf
latex = TEXINPUTS=..: lualatex
pdf_viewer = mupdf
notes_pdf = notes.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	: ${src::=${.IMPSRC:.tex=_tmp_by_make.tex}}
	cat ${.IMPSRC} | tr "、。" "，．" > ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${rm} ${src}

.PHONY: all
all: ${notes_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc

.PHONY: view
view: ${notes_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}

.PHONY: images
images:
	make -C fig

${notes_pdf}: notes.cls images
