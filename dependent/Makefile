all:
	dune build

PROOFS = $(wildcard proofs/*.proof)

test:
	$(foreach p, $(PROOFS), cat $(p) | dune exec ./prover.exe)
