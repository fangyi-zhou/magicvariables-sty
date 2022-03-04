PKG_NAME = magicvariables

dist: $(PKG_NAME).sty $(PKG_NAME).pdf
	mkdir -p $(PKG_NAME)
	cp $(PKG_NAME).pdf $(PKG_NAME).ins $(PKG_NAME).dtx README.md LICENSE $(PKG_NAME)
	zip -r $(PKG_NAME).zip $(PKG_NAME)

.PHONY: dist

%.sty: %.ins %.dtx
	latex $<

%.pdf: %.dtx %.sty
	latexmk -pdf $<

