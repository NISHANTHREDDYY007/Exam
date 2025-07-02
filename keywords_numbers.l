%{
#include <stdio.h>
%}

%option noyywrap

DIGIT      [0-9]+
KEYWORD    (if|else|while|for|return|int|float|char|void)

%%

{KEYWORD}   { printf("Keyword: %s\n", yytext); }
{DIGIT}     { printf("Number: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { /* Ignore identifiers */ }
[ \t\n]+     ;  // Skip whitespace
.            { printf("Other: %s\n", yytext); }

%%

int main() {
    printf("Enter code (Ctrl+D to stop):\n");
    yylex();
    return 0;
}




lex keywords_numbers.l
gcc lex.yy.c -o lexer
./lexer




if x == 10
    return 123;
else
    x = 45;
