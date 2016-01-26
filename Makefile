MD=$(wildcard *.md)
HTML_OUT=$(patsubst %.md,%.html,$(MD))
PDF_OUT=$(patsubst %.md,%.pdf,$(MD))
IMAGE_OUT=$(patsubst %.md,%.md_files,$(MD))

.PHONY: clean init
.DEFAULT_GOAL=html

all: html pdf

html: $(HTML_OUT)

pdf: $(PDF_OUT)

clean:
	rm -rf $(HTML_OUT) $(PDF_OUT) $(IMAGE_OUT)

%.html: %.md
	markdown-tool -toc -page -css style.css $< $@

%.pdf: %.html style.css base.css
	wkhtmltopdf \
		-s Letter \
		--print-media-type \
		--footer-center "Page [page]/[toPage]" \
		--footer-font-size 10 \
		--footer-font-name "Arial" \
		--footer-spacing 10 \
		--margin-bottom 25mm \
		--no-outline \
		--background \
		--quiet \
		$< $@

