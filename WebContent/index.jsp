<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Projeto Base</title>
	
	<!-- CSS -->
	<link rel="stylesheet" href="css/estilos.css">
	</head>
<body>
	
	<!-- Mensagem -->
	<%@ include file="mensagem.jsp"%>
	
	<!-- Formulário -->
	<form class="formularioLogin" action="requisicoes/logar.jsp" method="post">
		<input type="email" placeholder="E-mail" name="email">
		<input type="password" placeholder="Senha" name="senha">
		<input type="submit">
	</form>
	
</body>
</html>