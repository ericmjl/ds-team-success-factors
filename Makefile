.PHONY: build present

build:
	reveal-md index.md --static _site

present:
	reveal-md index.md --watch
