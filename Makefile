.PHONY: all clean

all: graph.pdf graph.svg

%.pdf: %.gv
	dot -Tpdf $^ -o $@

%.svg: %.gv
	dot -Tsvg $^ -o $@

clean:
	rm -f *.pdf
	rm -f *.svg
