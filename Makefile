basename=preproposal

$(basename).pdf: $(basename).tex context/*
	pdflatex        $(basename).tex
	biber           $(basename)
	makeglossaries  $(basename)
	pdflatex        $(basename).tex

clean:
	rm -fv $(basename).[a-oq-su-z]* $(basename).tex.* $(basename).toc

realclean: clean
	rm -fv $(basename).pdf
