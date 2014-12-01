%: export TEXINPUTS := .//:$(shell printenv TEXINPUTS)


%: %.pdf
	xdg-open $@.pdf &

%.pdf: %.tex
	xelatex $(@:pdf=tex)

.PHONY: clean
clean:
	mkdir -p aux log pdf
	mv *.aux aux
	mv *.log log
	mv *.pdf pdf
