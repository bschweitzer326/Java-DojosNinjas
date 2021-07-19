<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/registration.css">
<script type="text/javascript" src="../js/app.js"></script>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
			  
		  <a class="navbar-brand" href="/ninjas/new">New Ninja</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		 
	</nav>

	<div class="container">
		<h1>New Dojo</h1>
		
		<form:form action="/createdojo" method="post" modelAttribute="dojo">
			<div class="form-group">
                	<form:errors class="text-danger" path="dojoName"/>
                	<form:label path="dojoName">Dojo Name:</form:label>
                    <form:input type="text" class="form-control" path="dojoName" placeholder="Dojo Name"/>
             </div>
             
              <div class="form-group">
                <input class="btn btn-primary btn-block" type="submit" value="Create"/>
              </div>
                
         </form:form>
	
	</div>

</body>
</html>