# Simple-HTML-Compiler

Command used to compile the program:

lex project.l
yacc project.y
gcc y.tab.c -ll -ly
./a.out test.html

It currently just parses the HTML document and specifies whether there are any errors in the Document
