<%
	
	//Tentativa
	try{
		//Obter a Mensagem
		String mensagem = request.getParameter("mensagem");
		
		
		//Tipos de mensagem
		switch(mensagem){
			case "falhaLogin":
				out.print("<div class='mensagem'>Usuário ou senha incorretos</div>");
				break;
			case "falhaSessao":
				out.print("<div class='mensagem'>Realize o login</div>");
				break;
			case "cadastroOK":
				out.print("<div class='mensagem'>Produto cadastrado com sucesso</div>");
				break;
			case "cadastroFalha":
				out.print("<div class='mensagem'>Falha ao cadastrar o produto</div>");
				break;
		}
	}catch(Exception erro){
		
	}
%>