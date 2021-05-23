.PHONY: all clean

SOURCES := courses_current.gv requirements.gv courses_potential.gv

PDFS = $(SOURCES:%.gv=%.pdf)
SVGS = $(SOURCES:%.gv=%.svg)

all: pdf svg

pdf: $(PDFS)

svg: $(SVGS)

%.pdf: %.svg
	inkscape $^ --batch-process --export-area-drawing -o $@

%.svg: %.gv
	dot -Tsvg $^ -o $@

clean:
	rm -f *.pdf
	rm -f *.svg
