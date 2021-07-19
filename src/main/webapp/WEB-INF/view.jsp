<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo Page</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/registration.css">
<script type="text/javascript" src="../js/app.js"></script>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	
		<div class="left">
		  <a class="navbar-brand" href="/dojos/new">New Dojo</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  
		    <a class="navbar-brand" href="/ninjas/new">New Ninja</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		</div> 
		 
	</nav>

	<div class="container">
	<h1><c:out value="${dojo.dojoName}"></c:out> Location Ninjas</h1>
	
		<table class="table table-hover table-striped">
		  <thead>
		    <tr>
		      <th scope="col">First Name</th>
		      <th scope="col">Last Name</th>
		      <th scope="col">Age</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  	<c:forEach items="${dojo.ninjas}" var="loca">	
		    <tr>
		      <th scope="row"><c:out value="${loca.firstName}"/></th>
		      <td><c:out value="${loca.lastName}"/></td>
		      <td><c:out value="${loca.age}"/></td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</div>

</body>
</html>