.PHONY: all clean

all: graph.pdf

%.pdf: %.gv
	dot -Tpdf $^ -o $@

%.svg: %.gv
	dot -Tsvg $^ -o $@

clean:
	rm -f *.pdf
	rm -f *.svg
