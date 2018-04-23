<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<head>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
 
 
 
 

  
 </style>
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
        <li><a href="/messagesUser"> <span class="glyphicon glyphicon-envelope "></span> &nbsp; Mon espace</a></li>
        
        <li><a href="/offreA"> <span class="glyphicon glyphicon-list-alt "></span> &nbsp; Offres</a></li>
        
		<li><a href="/mesCandidatures"> <span class="glyphicon glyphicon-ok "></span> &nbsp; Mes candidatures</a></li>
     
      <li><a href="/mesCandidaturesSpo"> <span class="glyphicon glyphicon-plus "></span> &nbsp;  Candidature spontanée</a></li>
 	 
 	  <li><a href="/mesDocuments"> <span class="glyphicon glyphicon-folder-open "></span> &nbsp; Documents</a></li>

      </ul>
 	  
      
	<ul class="nav navbar-nav navbar-right">
<%-- 	<li><a href="#"> <span class=" "></span> &nbsp; <sec:authentication property="principal.username" /> </a></li> --%>
        <li><a href="/myAccount"><span class="glyphicon glyphicon-user"></span> <sec:authentication property="principal.username" /></a></li>
        <li><a href="../../logout"><span class="glyphicon glyphicon-log-out"></span> Se deconnecter </a></li>
    </ul>
    </div>
  </div>
</nav>
 	
 	
 	
 	
 

<script src="../../webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>
</html>