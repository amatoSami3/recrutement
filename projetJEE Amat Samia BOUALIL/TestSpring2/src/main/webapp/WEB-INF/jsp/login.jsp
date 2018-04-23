<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Connection</title>
 <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<style>
 
.btn-block {
    display: block;
    width: 27%;
    margin:0px 110px ;
   
}

.form-control {
    display: block;
    width: 60%;
    }
 

 

#login-box {
	width: 80%;
	padding: 20px;
	margin: 90px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}

</style>
 
</head>
 

<body>

		
<div id="login-box">	
	<div class="container">
	
	 <h2> ${message}</h2>
	 <form:form action="/login" method="POST" modelAttribute="user" class="form-signin">
		 
			<br/>
			 
			<form:input type="text" id="email" path="email"  placeholder="Adresse e-mail"
				class="form-control" /> 
				<form:errors path="email" cssClass="error"/><br/> 
				
			<form:input type="password"  path="password"  placeholder="Mot de pass"
				id="password"  class="form-control" /> 
				<form:errors path="password" cssClass="error"/><br /> 
			<c:if test="${param.error}">	
			<div align="center">
				<p style="font-size: 20; color: #FF1C19;">Email ou mot de pass invalid, verifiez svp</p>
			</div>
			</c:if>
			<button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit">Se connecter</button>
		</form:form>
	</div>
	</div>
	
	<form:form action="/registration" method="get">
		<button class="btn btn-md btn-warning btn-block" type="Submit">S'inscrire</button>
	
	</form:form>
	
</body>
</html>