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
	<a href="/logout">logout</a>
	
	<h3>Takes the Cake</h3>
	<table>
		
		<tr>
			
			<th>Cakes</th>
			<th>Price</th>
			<th></th>
			
		</tr>
		
		
	</table>
	
	<a href=""></a>
</div>
</body>
</html>