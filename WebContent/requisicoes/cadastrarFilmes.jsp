<%@ page import="dao.FilmeDao"%>
<%@ page import="beans.FilmeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
<%
	
	//Obter dados
	String filme = request.getParameter("filme");
	String sinopse = request.getParameter("sinopse");
	String trailer = request.getParameter("trailerLink");
	String imagem = request.getParameter("imagemLink");
	
	//Produto Bean
	FilmeBean fb = new FilmeBean();
	fb.setNomeFilme(filme);
	fb.setSinopse(sinopse);
	fb.setTrailerLink(trailer);
	fb.setImagemLink(imagem);
	
	//Produto Dao
	FilmeDao fd = new FilmeDao();
	boolean valida = fd.cadastrar(fb);
	
	//Redirecionamento
	if(valida ==  true){
		response.sendRedirect("../Filmes.jsp?mensagem=cadastroOK");
	}else{
		response.sendRedirect("../Filmes.jsp?mensagem=cadastroFalha");
	}
	
	
%>