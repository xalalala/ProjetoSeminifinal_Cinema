package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
	
	//M�todo de conex�o
	public static Connection obterConexao() {
		
		//Obter connection
		Connection con = null;
		
		//Tentativa
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/meu_cinema","root","");
			System.out.println("Conex�o OK");
		}catch(Exception erro) {
			System.out.println("Falha ao conectar "+erro.getMessage());
		}
		
		//Retorno
		return con;
	}

}
