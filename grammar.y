%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token A B
%%
str : s '\n' {return 0;}
s : A s B
|;
%%
int main()
{
printf("Enter the string:\n");
	if(!yyparse())
	printf("Valid grammar\n");
}
int yyerror()
{
printf("Invalid grammar!!\n");
exit(0);
}

