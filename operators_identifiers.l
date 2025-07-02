%{
#include <stdio.h>
%}

%option noyywrap

OPERATOR    (\+|\-|\*|\/|==|=|<|>|<=|>=|!=)
IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*

%%

{OPERATOR}     { printf("Operator: %s\n", yytext); }
{IDENTIFIER}   { printf("Identifier: %s\n", yytext); }
[ \t\n]+       ;  // Skip whitespace
.              { printf("Other: %s\n", yytext); }

%%

int main() {
    printf("Enter code (Ctrl+D to stop):\n");
    yylex();
    return 0;
}





lex operators_identifiers.l
gcc lex.yy.c -o lexer
./lexer




x = y + 2;
if (x >= 10) z = x * y;
