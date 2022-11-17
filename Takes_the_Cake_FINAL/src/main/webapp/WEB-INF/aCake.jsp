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
		<link rel="stylesheet" type="text/css" href="/css/aCake.css">
		<title>A Cake</title>
	</head>

	<body>
		<div class="container">
			<section class="header">
				<h1 class="title">Takes the Cake</h1>
				<p>Group Project: Nov '22</p>
			</section>
			<section class="nav-bar">
				<div class="nav-bar-left">
					<h3 class="welcome">This cake is, <c:out value="${cake.name}"/>!</h3>
				</div>
				<div class="nav-bar-right">
					<a href="/create-cake"><strong>Make a Cake</strong></a>
					<a href="/home"><strong>Home</strong></a>
					<a href="/logout"><strong>Log-Out</strong></a>
				</div>
			</section>
			<section class="main">
				<div class="table-header">
					<table>
						<thead>
							<tr>
    							<th><h2>Chef</h2></th>
    							<th><h2>Description</h2></th>
    							<th><h2>Likes</h2></th>
    							<th><h2>Actions</h2></th>
							</tr>
						</thead>
					</table>
				</div>
				<div class="table-content">
					<table>
						<tbody>
							    <tr>
							    	<td>
							            <p><c:out value="${cake.user.name}"></c:out></p>
							        </td>
							        <td>
							            <p><c:out value="${cake.description}"></c:out></p>
							        </td>
							        <td>
							            <p><c:out value="${cake.likes.size()}"></c:out></p>
							        </td>
								        <td class="action-btn-group">
								        	<form action="/cakes/${cake.id}/like" method=post>
								        		<button class="action-btn">Like</button>
								        	</form>
									        
									        <a href="/cakes/edit/${cake.id}"><button class="action-btn">Edit</button></a>
									        
								        </td>
							    </tr>
						</tbody>
					</table>
				</div>           
			</section>
		</div>
	</body>
</html>