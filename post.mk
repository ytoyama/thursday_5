rm = rm -rf


.PHONY: images
images:
	make -C fig

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc *.nav *.snm *.out doc_data.txt
