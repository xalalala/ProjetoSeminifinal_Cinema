package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.FilmeBean;
import conexao.Conexao;

public class FilmeDao {
	
	//Cadastrar produto
	public boolean cadastrar(FilmeBean obj) {
		

		
		 //Varia�vel boolean
		boolean situacao = false;
		
		//Conex�o
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			String sql = "INSERT INTO filmes (nomeFilme, sinopse, trailerLink, imagemLink) VALUES (?, ?, ?, ?)";
			
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			pstmt.setString(1, obj.getNomeFilme());
			pstmt.setString(2, obj.getSinopse());
			pstmt.setString(3, obj.getTrailerLink());
			pstmt.setString(4, obj.getImagemLink());
			
			pstmt.execute();
			
			situacao = true;
			
			pstmt.close();
			conexao.close();
			
		} catch (Exception erro) {
			System.out.println("Falha ao cadastrar "+erro.getMessage());
		}
		
		//Retorno
		return situacao;
	}
	
	//selecionar produtos
		public String selecionar(){
			
			//Iniciar estrutura
			String estrutura = "<table class='tabelaFilmes'>";
				estrutura+= "<tr>";
					estrutura+= "<td>C�digo</td>";
					estrutura+= "<td>Nome</td>";
					estrutura+= "<td>Sinopse</td>";
					estrutura+= "<td>Trailer</td>";
					estrutura+= "<td>Imagem</td>";
					estrutura+= "<td>Alterar</td>";
					estrutura+= "<td>Excluir</td>";
				estrutura+= "</tr>";
			
			//Conex�o
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				String sql = "SELECT * FROM filmes";
				Statement stmt = conexao.createStatement();
				
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					estrutura+= "<tr>";
						estrutura+= "<td>"+rs.getInt(1)+"</td>";
						estrutura+= "<td>"+rs.getString(2)+"</td>";
						estrutura+= "<td>"+rs.getString(3)+"</td>";
						estrutura+= "<td>"+rs.getString(4)+"</td>";
						estrutura+= "<td>"+rs.getString(5)+"</td>";
						estrutura+= "<td><a href='Filmes.jsp?idFilme="+rs.getInt(1)+"'>Alterar</a></td>";
						estrutura+= "<td><a href='requisicoes/excluirFilmes.jsp?idFilme="+rs.getInt(1)+"'>Excluir</a></td>";
					estrutura+= "</tr>";
				}
				stmt.close();
				conexao.close();
			}catch(Exception erro){}
		
			estrutura+= "</table>";	
			return estrutura;
		}
		
		//Excluir produto
		public boolean excluir(int idFilme) {
			
			//Situa��o
			boolean situacao = false;
			
			//Conex�o
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				String sql = "DELETE FROM filmes WHERE idFilme = ?";
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setInt(1, idFilme);
				pstmt.execute();
				pstmt.close();
				conexao.close();
				
				situacao = true;
			}catch(Exception e) {}
			//Retorno
			return situacao;
		}

		//Selecionar dados do produto espec�fico
		public FilmeBean especificarFilme(int idFilme) {
			
			//Objeto
			FilmeBean fb = new FilmeBean();
			
			//Cone��o
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				String sql = "SELECT nomeFilme, sinopse, trailerLink, imagemLink FROM filmes WHERE idFilme = ?";
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setInt(1, idFilme);
				
				ResultSet rs = pstmt.executeQuery();
				rs.last();
				fb.setNomeFilme(rs.getString(2));
				fb.setSinopse(rs.getString(3));
				fb.setTrailerLink(rs.getString(4));
				fb.setImagemLink(rs.getString(5));
				
				pstmt.close();
				conexao.close();
			}catch(Exception e) {}
			
			//Retorno
			return fb;
		}
		
		//Alterar Produtos
		public boolean alterar(FilmeBean fb) {
			
			//Valida��o
			boolean valida = false;
			
			//Conex�o
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				String sql = "UPDATE filmes SET nomeFilme=?, sinopse=?, trailerLink=?, imagemLink=? WHERE idFilme=?";
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setString(1, fb.getNomeFilme());
				pstmt.setString(2, fb.getSinopse());
				pstmt.setString(3, fb.getTrailerLink());
				pstmt.setString(4, fb.getImagemLink());
				pstmt.setInt(5, fb.getIdFilme());
				pstmt.execute();
				pstmt.close();
				conexao.close();
				valida= true;
			}catch(Exception e) {}
			
			
			//Retorno
			return valida;
		}

}

