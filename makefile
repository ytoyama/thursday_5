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

.SUFFIXES: .xcf .png
.xcf.png:
	convert -density 1024 -quality 100 ${.IMPSRC} ${.TARGET}

.PHONY: all
all: ${notes_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc

.PHONY: view
view: ${notes_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}
