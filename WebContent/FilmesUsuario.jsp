<%@ include file="Cabe�alho.jsp" %>
<%@ page import="dao.FilmeUsuarioDao" %>

	<% 
		FilmeUsuarioDao fud = new FilmeUsuarioDao();
		out.print(fud.selecionar());
	%>
		
<%@ include file="Rodape.jsp" %>