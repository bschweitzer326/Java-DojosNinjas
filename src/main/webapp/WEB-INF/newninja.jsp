<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/registration.css">
<script type="text/javascript" src="../js/app.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	
		  <a class="navbar-brand" href="/dojos/new">New Dojo</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  
	</nav>

	<div class="container">
		<h1>New Ninja</h1>
		
		<form:form action="/createninja" method="post" modelAttribute="ninja">
		             
            <div class="form-group">	
				<form:label path="dojo">Dojo:</form:label>
				<form:errors path="dojo"/>
				<form:select class="form-control" path="dojo">
					<c:forEach items="${dojo}" var="name">	
					<option value="${name.id}"><c:out value="${name.dojoName}"/></option>
					</c:forEach>
				</form:select>
			</div>	
			
			<div class="form-group">
				<form:label path="firstName">First Name:</form:label>
				<form:errors path="firstName"/>
				<form:input type="text" class="form-control" path="firstName"/>
			</div>
			
			<div class="form-group">
				<form:label path="lastName">Last Name:</form:label>
				<form:errors path="lastName"/>
				<form:input type="text" class="form-control" path="lastName"/>
			</div>	
			
			<div class="form-group">
				<form:label path="age">Age:</form:label>
				<form:errors path="age"/>
				<form:input type="number" class="form-control" path="age"/>
			</div>
             
              <div class="form-group">
                <input class="btn btn-primary btn-block" type="submit" value="Create"/>
              </div>
                
         </form:form>
	
	</div>

</body>
</html>