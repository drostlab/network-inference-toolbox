all: tools

BASE = $(shell pwd)

tools: bin/arboreto.sif bin/PIDC.sif bin/R-multitool.sif

clean:
	rm bin/*.sif

bin/%.sif: blueprints/%
	mkdir -p "$(BASE)/bin"
	(cd "$<" && sudo singularity build --force "$(BASE)/$@" "$*.def")

.PHONY: clean
