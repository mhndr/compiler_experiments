all:
	bison -t -d -v parser.y
	flex lexer.lex
	g++ lex.yy.c  parser.tab.c -ll #for linux

clean:
	 rm parser.tab.*
	 rm parser.output 
	 rm lex.yy.c 
