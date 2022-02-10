<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Produto</title>
<style>

body{

	background-color: #012626;
}

.forms{
	width:500px;

	position:absolute;
	top:20%;
	left:35%;
	
	
	

}
h1{

	position:absolute;
	top:10%;
	left:35%;
	color:white;


}

.campo{

	border-radius: 30px;
	border:black solid 5px;
	background-color:#04BFAD;
	height:320px;

}


input{

	margin-top: 30px;
	

}

select{

	margin-top: 30px;
	

}

button{

	margin-top: 30px;
	margin-left: 30px;

}

label{

	color: white;

}

button{

	width:60px;
	height:30px; 
	color:white; 
	background-color:#012626; 
	border-radius:10px;
	
}

button:hover{
	
	background-color:white;
	color:#027368;
	cursor: pointer;
	
	
	
}




</style>
</head>
<body>

	<h1>Formulário de cadastro de produto</h1>
	
	<form class="forms" action="salvarProduto">
	<fieldset class="campo">
		<label>Nome:</label>
		<input type="text" name="nome" required="required" value="${produto.nome }">
		<br>
		<label>Data de Validade:</label>
		<input type="date" name="dataValidade" required="required" value="${produto.dataValidade.time }">
		<br>
		<label>Preço do Produto:</label>
		<input type="text" name="preco" step="0.1" required="required" value="${produto.preco }">
		<br>
		<label>Estoque: </label>
		<input type="number" name="estoque" required="required" value="${produto.estoque }">
		<br>
		<label>Tipo de produto</label>
		<select name="tipoProduto">
		
			<c:forEach items="${tipos}" var="t">
			
				<option value="${t }">${t.toString() }</option>
				
			
			</c:forEach>
		
			
		
		</select> 
		<br>
		<button type="submit">Enviar!</button>
		
		</fieldset>
		
	</form>

</body>
</html>