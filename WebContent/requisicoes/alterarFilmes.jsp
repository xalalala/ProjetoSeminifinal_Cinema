<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="dao.FilmeDao" %>
	<%@ page import="beans.FilmeBean" %>
<%

	
	//Obter dados
	int idFilme = Integer.parseInt(request.getParameter("id"));
	String nomeFilme = request.getParameter("nomeFilme");
	String sinopse = request.getParameter("sinopse");
	String trailerLink = request.getParameter("trailerLink");
	String imagemLink = request.getParameter("imagemLink");
	
	//FilmeBean
		FilmeBean fb = new FilmeBean();
		fb.setIdFilme(idFilme);
		fb.setNomeFilme(nomeFilme);
		fb.setSinopse(sinopse);
		fb.setTrailerLink(trailerLink);
		fb.setImagemLink(imagemLink);
		
		//ProdutoDao
		FilmeDao fd = new FilmeDao();
		boolean valida = fd.alterar(fb);
		
		//Redirecionamento
		if(valida == true){
			response.sendRedirect("../Filmes.jsp?mensagem=alterarOK");
		}else{
			response.sendRedirect("../Filmes.jsp?mensagem=alterarFalha");
		}
	
%>