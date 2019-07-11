package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexao.Conexao;

public class FilmeEspecificoDao {
	
	//Selecionar dados do produto específico
			public String especificarFilme(int idFilme) {
				
				//Coneção
				Connection conexao = Conexao.obterConexao();
				
				String estrutura = "<tr class='produtoEspecifico'>";
				//Tentativa
				try {
					String sql = "SELECT nomeFilme, sinopse, trailerLink, imagemLink FROM filmes WHERE idFilme = ?";
					PreparedStatement pstmt = conexao.prepareStatement(sql);
					pstmt.setInt(1, idFilme);
					
					ResultSet rs = pstmt.executeQuery();
					rs.last();
					
					estrutura +="<div class='nomeDoFilme'>";
					estrutura+="<h1>"+rs.getString(1)+"</h1>";
					estrutura+="<td class='cinopseDoFilme'>"+rs.getString(2)+"<td>";
					estrutura +="</div>";
					estrutura += "<tr>";
					estrutura +="<div class='divMidia'>";
					estrutura+="<img src='"+rs.getString(4)+"'>";
					estrutura+=rs.getString(3);
					estrutura+="</div>";
					estrutura+="<a href='ComprarFilme.jsp?idFilme="+idFilme+"' class='comprarUmFilme'>Comprar Ingresso</a>";
					
					pstmt.close();
					conexao.close();
				}catch(Exception e) {}
				
				//Retorno
				return estrutura;
			}
	


}
