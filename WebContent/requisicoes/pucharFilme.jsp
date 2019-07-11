<%@ page import="dao.FilmeEspecificoDao" %>
	<% 
	int idFilme = Integer.parseInt(request.getParameter("idFilme"));
	
	FilmeEspecificoDao fed = new FilmeEspecificoDao();
	out.print(fed.especificarFilme(idFilme));
	
	%>