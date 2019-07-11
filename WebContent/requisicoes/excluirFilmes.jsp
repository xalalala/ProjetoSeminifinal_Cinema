<%@ page import="dao.FilmeDao"%>
<%

	//IdProdut
	int idFilme = Integer.parseInt(request.getParameter("idFilme"));

	//Executar método
	FilmeDao fd = new FilmeDao();
	boolean situacao = fd.excluir(idFilme);
	
	//Redirecionamento
	if(situacao == true){
		response.sendRedirect("../Filmes.jsp?mensagem=excluirOK");
	}else{
		response.sendRedirect("../Filmes.jsp?mensagem=excluirFalha");
	}
	
%>