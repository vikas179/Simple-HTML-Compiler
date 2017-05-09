%{
#include<stdio.h>
#include<string.h>
%}

%%
"<"		{return LBRACKET;}
">"		{return RBRACKET;}
"html"		{return HTML;}
"head"		{return HEAD;}
"title"		{return TITLE;}
"body"		{return BODY;}
"/"		{return SLASH;}
"h1"		{return HONE;}
"h2"		{return HTWO;}
"h3"		{return HTHREE;}
"p"		{return PARAGRAPH;}
"br"		{return BREAK;}
[a-zA-Z]+	{return LETTERS;}
[0-9]+		{return INTEGER;}
%
