<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file = "header.jsp" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <title>Liste des candidats</title>
</head>
<style>
.btn-primary{
	 background-color: #009999 !important;
	  algin: right;
     
	}
</style>

<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Liste de candidats</a>
    </div>

€‹<div class="container">
     <c:forEach items="${candidats}" var="p">
       
  
  
   
  <div class="card" style="width:400px">
     
    <img class="card-img-top" src="/upload-dir/${p.photo}" alt="photo de ${p.user.name} " style="width:100%">
    <div class="card-body">
      <h4 class="card-title">${p.civilite} ${p.user.name} ${p.user.lastName}</h4>
      <p class="card-text"> ${p.profil} ${p.formation } ${p.experience} </p>
      <a href="/${p.user_id}-voir" class="btn btn-primary">voir Profil</a>
    </div>
  
    								 
          
         
        
  </div>
  
   <hr>
      </c:forEach>
       
      
</div>

  


  <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>  

</body>

</html>