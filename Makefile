.PHONY: all clean

all: courses_current.pdf courses_current.svg requirements.pdf requirements.svg

%.pdf: %.svg
	inkscape $^ --batch-process --export-area-drawing -o $@

%.svg: %.gv
	dot -Tsvg $^ -o $@

clean:
	rm -f *.pdf
	rm -f *.svg
