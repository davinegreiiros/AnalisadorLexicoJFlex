package analisadorlexicocalculadora;

import java.io.IOException;
import java.io.StringReader;


public class CalculadoraTest {

	public static void main (String args[]) throws IOException {
		String expressao = "20-2";
		String expressao2 = "10+2";
		Lexer lexical = new Lexer (new StringReader(expressao));
		Lexer lexical2 = new Lexer(new StringReader(expressao2));
		lexical.yylex();
		lexical2.yylex();
	}
	
}
