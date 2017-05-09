%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//int countsection =1;
//char* title;
//int istitle =0;
extern FILE *html;
%}



%start htmlstmt
%token LBRACKET RBRACKET HTML HEAD TITLE BODY SLASH HONE HTWO HTHREE PARAGRAPH BREAK LETTERS INTEGER

%%

htmlstmt: LBRACKET HTML RBRACKET stmt LBRACKET SLASH HTML RBRACKET
	;

head: LBRACKET HEAD RBRACKET titlestmt LBRACKET SLASH HEAD RBRACKET
	;

titlestmt: LBRACKET TITLE RBRACKET stmt  LBRACKET SLASH TITLE RBRACKET
	;

body: LBRACKET BODY RBRACKET bodystmt LBRACKET SLASH BODY RBRACKET 
	;

bodystmt: LBRACKET HONE RBRACKET stmt LBRACKET SLASH HONE RBRACKET
	 |LBRACKET HTWO RBRACKET stmt LBRACKET SLASH HTWO RBRACKET
	 |LBRACKET HTHREE RBRACKET stmt LBRACKET SLASH HTHREE RBRACKET
	;

stmt: bodystmt
     |LETTERS
	;

%%

#include"lex.yy.c"
#include<ctype.h>
int count=0;
int main(int argc, char *argv[])
{
	yyin = fopen(argv[1], "r");
	if(yyparse()==1)
		printf("\nParsing failed\n");
	   else
		printf("\nParsing completed successfully\n");
	   fclose(yyin);
	return 0;
}
yyerror(char *s){
	printf("%d: %s %s\n", yylineno, s, yytext );
}

