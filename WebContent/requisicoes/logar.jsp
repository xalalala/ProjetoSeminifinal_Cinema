<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%
	//Obter e-mail e senha
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
		if(email == "admin@gmail.com" && senha == "12345"){
		response.sendRedirect("../index.jsp?mensagem=falhaLogin");
	}else{
		response.sendRedirect("../Filmes.jsp");
}
	
%>