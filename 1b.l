%{
#include<stdio.h>
#include<string.h>
int w=0, s=0, l=0;
%}

%%
([a-zA-Z0-9])*	{w++;}
" "	{s++;}
"\n"	{l++;}
"\n\n"	{printf("\nNo of Words=%d, Spaces=%d, and Lines=%d\n", w, s, l); w=s=l=0;}
%%

int yywarp(void){}

int main()
{
	yylex();
	return 0;
}
