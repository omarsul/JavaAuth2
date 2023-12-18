<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here </title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

</head>
<body>
	<div class="container mt-5">
	<div>
		<h2>Welcome, <c:out value="${user.userName}"/></h2>
	</div>
	
	<div>
		<p>Java Spring Boot Assignment </p>
		<a href="/logout">LogOut</a>
		<br>
<%--		<a href="/addPage">Add to my shelf!</a>--%>
	</div>
	
<%--	<table class="table">--%>
<%--		<tr>--%>
<%--			<th>ID</th>--%>
<%--			<th>Title</th>--%>
<%--			<th>Author Name</th>--%>
<%--			<th>Posted By</th>--%>
<%--		</tr>--%>
<%--		<c:forEach var="book" items="${books}">--%>
<%--			--%>
<%--		<tr>--%>
<%--			<td><c:out value="${book.id}"/></td>--%>
<%--			<td><a href="books/${book.id}"><c:out value="${book.title}"/></a></td>--%>
<%--			<td><c:out value="${book.author}"/></td>--%>
<%--			<td><c:out value="${book.user.userName}"/></td>--%>
<%--		</tr>--%>
<%--		</c:forEach>--%>
<%--	</table>--%>
	</div>
	
	 <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	
</body>
</html>