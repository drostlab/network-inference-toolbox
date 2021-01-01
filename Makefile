all: tools

BASE = $(shell pwd)

tools: bin/utilities.sif
tools: bin/arboreto.sif
tools: bin/PIDC.sif
tools: bin/R-multitool.sif

clean:
	rm bin/*.sif bin/*.tag

bin/%.sif: blueprints/%
	mkdir -p "$(BASE)/bin"
	( \
	  cd "$<" && \
	  sudo singularity build --force "$(BASE)/$@" "$*.def" && \
	  find . -type f -exec sha256sum "{}" + >"$(BASE)/bin/$*.tag" \
	)

.PHONY: clean
