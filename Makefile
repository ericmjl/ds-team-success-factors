.PHONY: build present

# Depends on imagemagick

build:
	reveal-md index.md --static _site
	reveal-md index.md --print _site/slides.pdf
	# make pngs of each slide
	mkdir -p _site/png
	convert -density 300 _site/slides.pdf -quality 90 _site/png/slides.png

present:
	reveal-md index.md --watch
