RM = rm -rf
INKSCAPE = inkscape
DPI = 360

svg_figures != ls *.svg
xcf_figures != ls *.xcf
target_files = ${svg_figures:.svg=.pdf} ${xcf_figures:.xcf=.png}

.SUFFIXES: .svg .pdf
.svg.pdf:
	${INKSCAPE} -zD -A ${.TARGET} ${.IMPSRC}

.SUFFIXES: .csv .png
.csv.png:
	python3 bar_chart.py ${.IMPSRC} ${.TARGET}

.SUFFIXES: .xcf .png
.xcf.png:
	convert -density 1024 -quality 100 ${.IMPSRC} ${.TARGET}


.PHONY: all
all: ${target_files}

.PHONY: clean
clean:
	${RM} ${target_files}
