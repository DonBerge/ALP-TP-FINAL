STACK = stack

main: build test make-docs

make-docs:
	cabal haddock --haddock-internal

open-docs:
	cabal haddock --haddock-internal --open

test:
	cabal repl --with-compiler=doctest

build:
	$(STACK) build

repl: 
	$(STACK) repl