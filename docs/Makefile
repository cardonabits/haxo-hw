MD_FILES := $(wildcard *.md)
HTML_FILES := $(MD_FILES:%.md=%.html)
PDF_FILES := $(MD_FILES:%.md=%.pdf)

all: $(PDF_FILES) $(HTML_FILES)

%.pdf: %.md
	pandoc $< -H disable-float.tex --toc -V geometry:margin=1in -s -o $@

%.html: %.md
	pandoc $< --metadata title=$* -V geometry:margin=1in -s -o $@

clean:
	rm -f $(PDF_FILES) $(HTML_FILES)

.PHONY: clean
