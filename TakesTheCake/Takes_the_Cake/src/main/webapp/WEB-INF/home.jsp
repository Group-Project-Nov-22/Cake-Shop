<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CakeBoard</title>
</head>
<body>


<div>
	<h1>Welcome, <c:out value="${user.name}"/></h1>
	<a href="/logout">Log-Out</a>
	<a href="/create-cake">Make A Cake</a>
	
	<h3>Takes the Cake</h3>
	<table>
		
		<tr>
			
			<th>Cakes</th>
			<th>Chef</th>
			<th>Likes</th>
			
		</tr>
		<c:forEach var="cake" items="${cakes}">
			<tr>
				<td>
					<p><a href="/cakes/${cake.id}"><c:out value="${cake.name}"/></a></p>
				</td>
				<td>
					<p><c:out value="${cake.user.name}"></c:out></p>
				</td>
				<td>
					<p>***********PlaceHolder************</p>
				</td>
			</tr>
		</c:forEach>
		
		
	</table>
	
	
</div>
</body>
</html>