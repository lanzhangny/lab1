all: lab1 tests

lab1: lab1.ml
	ocamlbuild -pkg unix lab1.byte

lab1_tests: lab1_tests.ml
	ocamlbuild -pkg unix lab1_tests.byte	

tests: lab1_tests
	./lab1_tests.byte

clean:
	rm -rf _build *.byte
