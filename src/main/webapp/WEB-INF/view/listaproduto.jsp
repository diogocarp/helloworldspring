<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Produtos</title>
<style type="text/css">

table{

	margin:auto;
	background-color: white;
	width:700px;
	text-align: center;

}

h1{

	margin-left: 44%;
	color:white;


}

body{

	background-color: #009688;


}





</style>
</head>
<body>

	<h1>Lista de Produtos</h1>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Tipo</th>
			<th>Ver+</th>
			<th>Venceu?</th>
			<th>Excluir</th>
			<th>Alterar</th>
			

		</tr>

		<c:forEach items="${produtos }" var="p">

			<tr <c:if test="${p.vencido }">style="color:red;"</c:if>>

				<td>${p.id }</td>
				<td>${p.nome }</td>
				<td>${p.tipoProduto.toString() }</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${p.dataValidade.time }"/></td>
				<td>${p.vencido ? "Sim" : "Não" }</td>
				<td><a href="excluirProduto?idProduto=${p.id }" onclick="return confirm('Deseja excluir')">Excluir</a></td>
				<td><a href="alterarProduto?idProduto=${p.id }" onclick="return confirm('Deseja alterar?')">Alterar</a></td>

			</tr>





		</c:forEach>


	</table>

</body>
</html>