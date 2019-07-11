<%@ include file="Cabeçalho.jsp" %>
<%@ page import="dao.FilmeEspecificoDao" %>
	<%
		int idFilme = Integer.parseInt(request.getParameter("idFilme"));
		
		FilmeEspecificoDao fed = new FilmeEspecificoDao();
		out.print(fed.especificarFilme(idFilme));
	%>
<%@ include file="Rodape.jsp" %>