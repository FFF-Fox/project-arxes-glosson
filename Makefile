parser: scanner.l parser.y
	bison -d parser.y
	flex scanner.l
	gcc -o $@ parser.tab.c lex.yy.c linked_list.c -lfl