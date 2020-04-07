package analisadorlexicocalculadora;

import static analisadorlexicocalculadora.Token.*;

%%
%class Lexer
%type Token
%{
private void print_value(String lexema, String descricao) {
 System.out.println(lexema + " - " + descricao);
}
%}
%%
"//".*      {/*Ignore*/}
[0-9]     { print_value(yytext(), "NÚMERO"); }
[0-9]*     { print_value(yytext(), "NÚMERO"); }
"+" 		{ print_value(yytext(), "SOMA"); }
"-" 		{ print_value(yytext(), "SUBTRAÇÃO"); }
"*" 		{ print_value(yytext(), "MULTIPLICAÇÃO"); }
"/" 		{ print_value(yytext(), "DIVISÃO"); }
"**"        { print_value(yytext(), "PARENTESES"); }
"(" 		{ print_value(yytext(), "PARENTESES"); }
")" 		{ print_value(yytext(), "PARENTESES"); }
[-+]?("[0-9]")*[.] ("[0-9]")+ {print_value(yytext(), "REAL");}
[-+]?("[0-9]")+ {print_value(yytext(), "INTEIRO");}
. {return ERROR;}