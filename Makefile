.PHONY: all clean

all: courses.pdf courses.svg future.pdf future.svg

%.pdf: %.svg
	inkscape $^ --batch-process --export-area-drawing -o $@

%.svg: %.gv
	dot -Tsvg $^ -o $@

clean:
	rm -f *.pdf
	rm -f *.svg
