<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
 </head>
 
<html lang="en">
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	  
      <a class="navbar-brand" href="#">AMG</a>
      </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="./messaes"> <span class="glyphicon glyphicon-home "></span> &nbsp; espace responsable </a></li>
		<li><a href="../candidaturesRespo"> <span class="glyphicon glyphicon-folder-open "></span> &nbsp; les candidatures</a></li>
     
      <li><a href="../mesOffres"> <span class="glyphicon glyphicon-list-alt "></span> &nbsp;  Mes offres</a></li>
 	 
 	   </ul>
 	  
	<ul class="nav navbar-nav navbar-right">
<%-- 	<li><a href="#"> <span class=" "></span> &nbsp; <sec:authentication property="principal.username" /> </a></li> --%>
        <li><a href="../myAccount/#"><span class="glyphicon glyphicon-user"></span> <sec:authentication property="principal.username" /></a></li>
        <li><a href="../../logout"><span class="glyphicon glyphicon-log-out"></span> deconnection  </a></li>
    </ul>
    </div>
  </div>
</nav>
 	
<script src="../../webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>