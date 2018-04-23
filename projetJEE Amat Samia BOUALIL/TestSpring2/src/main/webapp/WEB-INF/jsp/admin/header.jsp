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
	  
      <a class="navbar-brand" href="#">Logo</a>
      </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="/messagesA"> <span class="glyphicon glyphicon-home "></span> &nbsp; Espace admin</a></li>
		<li><a href="/employees"> <span class="glyphicon glyphicon-folder-open "></span> &nbsp; Employ&eacute;s</a></li>
     
      <li><a href="/candidats"> <span class="glyphicon glyphicon-envelope "></span> &nbsp;  Candidats</a></li>
 	  <li><a href="/users"> <span class="glyphicon glyphicon-home "></span> &nbsp; Utilisateurs</a></li>
      </ul>
 	  
	<ul class="nav navbar-nav navbar-right">
<%-- 	<li><a href="#"> <span class=" "></span> &nbsp; <sec:authentication property="principal.username" /> </a></li> --%>
        <li><a href="/myAccountAdmin"><span class="glyphicon glyphicon-user"></span> <sec:authentication property="principal.username" /></a></li>
        <li><a href="../../logout"><span class="glyphicon glyphicon-log-out"></span> Se d&eacute;connecter </a></li>
    </ul>
    </div>
  </div>
</nav>
<script src="../../webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>