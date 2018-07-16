.PHONY: all
all:
	dune build

.PHONY: run
run:
	dune exec issuubox
