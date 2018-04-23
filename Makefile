V ?= 0
ifeq ($(V),1)
	helper=
	progress=
else
	helper=@
	progress=@echo $@;
endif

PATTERNS = $(shell find . -name '*.markdown')

PREPROCESSED_PATTERNS = $(patsubst %, public/%.in, $(PATTERNS))
HTML = $(patsubst ./%.markdown, public/%.html, $(PATTERNS))
ASSETS = $(patsubst template/%, public/%, $(wildcard template/*.css template/*.png template/*.jpg template/images/*))

all: $(HTML) $(ASSETS) public/bootstrap
	@echo
	@echo "Site built. Now run ./script/server to view it"
	@echo

public/bootstrap:
	$(progress) ln -s /usr/share/twitter-bootstrap/files public/bootstrap

public/%: template/%
	$(helper) mkdir -p $$(dirname $@)
	$(progress) ln $< $@

%.html.in: %.markdown.in
	$(helper) pandoc --smart -f markdown -t html -o $@ $<

%.html: %.html.in ./script/apply-template.rb template/layout.html
	$(progress) ruby ./script/apply-template.rb template/layout.html $< > $@

public/%.markdown.in: %.markdown script/expand-links.sed
	$(helper) mkdir -p $$(dirname $@)
	$(helper) sed -f script/expand-links.sed $< > $@

.PRECIOUS: %.html.in public/%.markdown.in

upload: all
	sh script/upload.sh

clean:
	$(RM) -r public
