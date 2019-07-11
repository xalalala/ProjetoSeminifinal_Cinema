package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import conexao.Conexao;

public class FilmeUsuarioDao {
	
	//selecionar produtos
	public String selecionar(){
		
		//Iniciar estrutura
		String estrutura = "<table class='tabelaFilmes'>";
			estrutura+= "<tr>";
				estrutura+= "<td>Nome</td>";
				estrutura+= "<td>Sinopse</td>";
			estrutura+= "</tr>";
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			String sql = "SELECT * FROM filmes";
			Statement stmt = conexao.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				estrutura+= "<tr>";
					estrutura+= "<td><a href='FilmeEspecifico.jsp?idFilme="+rs.getInt(1)+"'>"+rs.getString(2)+"<a></td>";
					estrutura+= "<td>"+rs.getString(3)+"</td>";
				estrutura+= "</tr>";
			}
			stmt.close();
			conexao.close();
		}catch(Exception erro){}
	
		estrutura+= "</table>";	
		return estrutura;
	}

}
	

