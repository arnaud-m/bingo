
all : test;

benchmark: ;
	./bingo --verbose bingo.conf 5

pdf: ;
	./bingo bingo.conf 0 	

test: ;
	./bingo --verbose bingo-test.conf 1

clean:;
	rm -f N[0-9]*.txt N[0-9]*.svg summary-*.svg octave-core
