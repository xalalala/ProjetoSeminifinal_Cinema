<%@ include file="Cabeçalho.jsp" %>

<%@ page import="dao.FilmeDao" %>
<%@ page import="beans.FilmeBean" %>

		
			<!-- Formulario -->
	<%
		//idProduto
		int idFilme = 0;
	
	//Tentar obter o idProduto via URL
	try{
		idFilme = Integer.parseInt(request.getParameter("idFilme"));
		
	}catch(Exception e){
		
	}
	//Condicional
	if(idFilme == 0){
	%>
		<form action="requisicoes/cadastrarFilmes.jsp" method="post" class="formularioFilme">
			<div>	
				<input type = "text" placeholder="Filme" name = "filme">
				<input type = "text" placeholder="Sinopse" name = "sinopse">
			</div>
			<div>
				<input type = "text" placeholder="TrailerLink (iFrame)" name = "trailerLink">
				<input type = "text" placeholder="ImagemLink" name = "imagemLink">
				
			</div>
			<div>
				<input type = "submit" value="Cadastrar">
			</div>
		</form>
	
	<%
	}else{ 
		//Obter dados do produto
		FilmeDao fd = new FilmeDao();
		FilmeBean fb = new FilmeBean();
	%>

		
				<form action="requisicoes/alterarFilmes.jsp" method="post" class="formularioFilme">
			<div>	
				<input type = "text" placeholder="Filme" name = "nomeFilme" <% out.print(fb.getNomeFilme()); %>>
				<input type = "text" placeholder="Sinopse" name = "sinopse" <% out.print(fb.getSinopse()); %>>
			</div>
			<div>
				<input type = "text" placeholder="TrailerLink (iFrame)" name = "trailerLink" <% out.print(fb.getTrailerLink()); %>>
				<input type = "text" placeholder="ImagemLink" name = "imagemLink" <% out.print(fb.getImagemLink()); %>>
			</div>
				<input type = "submit" value="Alterar">
				<a href="Filmes.jsp">Cancelar</a>
		</form>
	
	<% } %>
	
		<%
		FilmeDao fd = new FilmeDao();
		out.print(fd.selecionar());
		%>


<%@ include file="Rodape.jsp" %>