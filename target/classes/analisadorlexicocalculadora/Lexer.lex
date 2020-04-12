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
\s.*		{/*Ignore*/}
[-]?[0-9]+  { print_value(yytext(), "N�MERO"); }
"+" 		{ print_value(yytext(), "SOMA"); }
"-" 		{ print_value(yytext(), "SUBTRA��O"); }
"*" 		{ print_value(yytext(), "MULTIPLICA��O"); }
"/" 		{ print_value(yytext(), "DIVIS�O"); }
"**"        { print_value(yytext(), "POTENCIA��O"); }
"(" 		{ print_value(yytext(), "PARENTESES ESQUERDO"); }
")" 		{ print_value(yytext(), "PARENTESES DIREITO"); }
[-+]?("[0-9]")*[.] ("[0-9]")+ {print_value(yytext(), "REAL");}
[-+]?("[0-9]")+ {print_value(yytext(), "INTEIRO");}
. {return ERROR;}