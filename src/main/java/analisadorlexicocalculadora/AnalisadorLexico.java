package analisadorlexicocalculadora;

import java.io.File;
import java.nio.file.Paths;

public class AnalisadorLexico {
	
	public static void main(String args[]) {
		String rootPath = Paths.get("").toAbsolutePath().toString();
		String subPath = "\\src\\main\\java\\analisadorlexicocalculadora\\";
		String file = rootPath + subPath + "Lexer.lex";
		File sourceCode = new File(file);
		jflex.Main.generate(sourceCode);
		
	}
}	

