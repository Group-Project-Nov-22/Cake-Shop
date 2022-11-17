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
		<link rel="stylesheet" type="text/css" href="/css/home.css">
		<title>Logged In Home</title>
	</head>
	<body>
		<div class="container">
			<section class="header">
				<h1 class="title">Takes the Cake</h1>
				<p>Group Project: Nov '22</p>
			</section>
			<section class="nav-bar">
				<div class="nav-bar-left">
					<h3 class="welcome">Welcome, <c:out value="${user.name}"/></h3>
				</div>
				<div class="nav-bar-center">
					
				</div>
				<div class="nav-bar-right">
					<a href="/create-cake"><strong>Make a Cake</strong></a>
					<a href="/logout"><strong>Log-Out</strong></a>
				</div>
			</section>
			<section class="main">
				<div class="table-header">
					<table>
						<thead>
							<tr>
    							<th><h2>Chef</h2></th>
    							<th><h2>Cakes</h2></th>
    							<th><h2>Likes</h2></th>
							</tr>
						</thead>
					</table>
				</div>
				<div class="table-content">
					<table>
						<tbody>
							<c:forEach var="cake" items="${cakes}">
							    <tr>
							        <td>
							            <p><c:out value="${cake.user.name}"></c:out></p>
							        </td>
							        <td>
							            <p><a href="/cakes/${cake.id}"><c:out value="${cake.name}"/></a></p>
							        </td>
							        <td>
							            <p>***********PlaceHolder************</p>
							        </td>
							    </tr>
							</c:forEach>
						</tbody>
					</table>
				</div>           
			</section>
		</div>
	</body>
</html>