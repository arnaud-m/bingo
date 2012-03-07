
all : test;

benchmark: clean;
	./bingo --verbose bingo.conf 5

pdf: ;
	./bingo bingo.conf 0 	

test: clean;
	./bingo --verbose bingo-test.conf 1
	./go2opl --verbose -- N[0-9]*.txt	

clean:;
	rm -f N[0-9]*.txt N[0-9]*.svg summary-*.svg octave-core
