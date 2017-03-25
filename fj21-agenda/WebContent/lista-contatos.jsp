<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<head>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>


<body>
	<c:import url="cabecalho.jsp" />
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
	<table style="border: 1px solid black;">
		<tr>
			<th>nome</th>
			<th>email</th>
			<th>endereco</th>
			<th>Data Nascimento</th>
		</tr>
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				<!--  
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if></td>
				<td><c:if test="${empty contato.email}">
					E-mail não informado
					</c:if></td>-->
				<td><c:choose>
						<c:when test="${not empty contato.email}">
	${contato.email}
	</c:when>
						<c:otherwise>
	Email não informado
	</c:otherwise>
					</c:choose></td>
				<td>${contato.endereco}</td>
				<!--  <td>${contato.dataNascimento.time}</td> -->
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
			</tr>

		</c:forEach>
	</table>
	<c:import url="rodape.jsp" />



</body>
</html>