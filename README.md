# Simple-HTML-Compiler

Command used to compile the program:

   1. lex project.l
   
   2. yacc project.y
   
   3. gcc y.tab.c -ll -ly
   
   4. ./a.out test.html

It currently just parses the HTML document and specifies whether there are any errors in the Document.
