<%@ include file="Cabeçalho.jsp" %>

<div class="poltronas">
	<select>
		<option> Selecione uma fileira</option>
		<option> A </option>
		<option> B </option>
		<option> C </option>
		<option> D </option>
		<option> E </option>
		<option> F </option>
	</select>
	<select>
		<option>Selecione uma poltrona</option>
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		<option>5</option>
		<option>6</option>
		<option>7</option>
		<option>8</option>
		<option>9</option>
		<option>10</option>
		<option>11</option>
		<option>12</option>
	</select>
	
	<input type = "text" placeholder="Cartão de Crédito" name = "CC">
	<input type = "text" placeholder="Código de segurança" name = "CS">
	<input type = "text" placeholder="Vencimento" name = "VS">
	<form action="TelaInicial.jsp">
		<input type="submit">
	</form>
</div>
<%@ include file="Rodape.jsp" %>