NAME = fsp2012
BIBTEXSRCS = fsp2012.bib
USE_PDFLATEX = yes
PATTERNS = $(patsubst ../%.markdown, ../%.ltx, $(wildcard ../selection/*.markdown ../involvement/*.markdown))
FIGURES = $(patsubst %.svg, %.pdf, $(wildcard figures/*.svg)) $(patsubst %.svg, %.eps, $(wildcard figures/*.svg)) $(patsubst %.svg, %.png, $(wildcard figures/*.svg))
OTHER = $(PATTERNS) $(FIGURES)
LATEXMK = $(shell find /usr/local/share/latex-mk/latex.gmk /usr/share/latex-mk/latex.gmk 2>/dev/null)
INKSCAPE = $(shell find $(which inkscape) /Applications/Inkscape.app/Contents/Resources/bin/inkscape 2>/dev/null)
CLEAN_FILES += $(PATTERNS)

include $(LATEXMK)

%.ltx: %.ltx.in
	(ruby format.rb $< > $@) || ($(RM) $@; false)

%.ltx.in: %.markdown
	pandoc -f markdown -t latex -o $@ $<

%.pdf: %.svg
	$(INKSCAPE) --export-pdf=$@ $<

%.eps: %.svg
	$(INKSCAPE) --export-eps=$@ $<

%.png: %.svg
	$(INKSCAPE) --export-png=$@ $<
