%{
#include <stdio.h>

int yylex();
void yyerror(const char *s);
%}

%token IDENT
%token NUMBER
%token FUNC
%token LPAR
%token RPAR
%token LCURLY
%token RCURLY
%start program

%%
program: functions {printf("program -> functions\n");}
functions: function functions {printf("functions-> function functions\n");} 
		| %empty {printf("functions-> empty\n");}

function: FUNC func_name LPAR RPAR LCURLY RCURLY {
				printf("function-> FUNC func_name LPAR RPAR LCURLY RCURLY \n");
			}
		|  FUNC func_name  LPAR RPAR LCURLY function RCURLY {
				printf("function-> FUNC func_name LPAR RPAR LCURLY function RCURLY \n");
			}

func_name: IDENT NUMBER func_name {printf("func_name-> IDENT NUMBER\n");}
		 | IDENT  {printf("func_name-> IDENT\n");}
		 | NUMBER IDENT func_name {printf("func_name-> NUMBER IDENT\n");}
		 | %empty {printf("func_name-> empty\n");}

%%

int main(void) {
	yyparse();
}


void yyerror(const char*s){
	printf("Error :%s\n",s);
}
