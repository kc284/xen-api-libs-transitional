.PHONY: release build install uninstall clean test doc reindent

release:
	dune build @install --profile=release

build:
	dune build @install --dev

install:
	dune install

uninstall:
	dune uninstall

clean:
	dune clean

test:
	dune runtest

# requires odoc
doc:
	dune build @doc

reindent:
	git ls-files '*.ml' '*.mli' | xargs ocp-indent --inplace
