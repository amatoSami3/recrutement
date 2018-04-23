<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
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

		
 <h2> ${message}</h2>
	
	 
		
		<form  action="/login" method="post">

        
		<button type="submit"
          class="btn btn-primary block full-width m-b">Se connecter
        </button>

      </form>
	
	
	
</body>
</html>