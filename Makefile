all: tools

BASE = $(shell pwd)

tools: bin/utilities.sif
tools: bin/arboreto.sif
tools: bin/PIDC.sif
tools: bin/R-multitool.sif

clean:
	rm bin/*.sif

bin/%.sif: blueprints/%
	mkdir -p "$(BASE)/bin"
	(cd "$<" && sudo singularity build --force "$(BASE)/$@" "$*.def")

.PHONY: clean
