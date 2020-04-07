package analisadorlexicocalculadora;

import java.io.IOException;
import java.io.StringReader;


public class CalculadoraTest {

	public static void main (String args[]) throws IOException {
		String expressao = "(2+5)*10";
		Lexer lexical = new Lexer (new StringReader(expressao));
		lexical.yylex();
	}
	
}
