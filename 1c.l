%{
#include<stdio.h>
#include<string.h>
int w=0, s=0, l=0;
%}

%%
bool|int|float	{printf("\nKeyword");}
[+,-]?[0-9]+	{printf("\nConstants");}
["',.]+		{printf("\nPunctuations");}
[!@#$%&*()]+	{printf("\nSpecial Character");}
[a-zA-Z]+	{printf("\nIdentifier");}
%%

int yywarp(void){}

int main()
{
	yylex();
	return 0;
}
