%{
#include <stdio.h>
#include<string.h>
#include<stdlib.h>
%}

%%

"exit"                    { printf("Exiting program.\n"); exit(0); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("IDENTIFIER: %s\n", yytext); }
[0-9]+                    { printf("NUMBER: %s\n", yytext); }
[=+\-*]                   { printf("OPERATOR: %s\n", yytext); }
[ \t\n]                   { /* Ignore whitespace */ }
[{};,]                    { printf("SEPARATORS: %s\n", yytext); }
.                         { printf("UNKNOWN: %s\n", yytext); }

%%

int main() {
    printf("Enter an expression to lex: ");
while(1){
    yylex();
}
    return 0;
}

int yywrap() {
    return 1;
}

