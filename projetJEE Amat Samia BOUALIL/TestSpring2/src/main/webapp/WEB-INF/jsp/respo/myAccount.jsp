 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ include file = "header.jsp" %>

<html lang="en">

 
<head>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <title>Mon compte</title>
  
</head>



<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Mon compte</a>  
    <a style="align:center" class="btn btn-success pull-right" href="<c:url value='/edit-${myAccount.user_id}-Employee' />"> Modifier mon profil</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

 <div class="container">
  <h2>Mon espace responsable de service</h2>
  <p>cliquez ci dessus si vous voulez modifier</p>                      
   
  
       
     


 <div style="background-color:lavenderblush;"> <h2>information generale </h2></div>
 
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> Prenom </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${myAccount.user.name}</div>
   
    
  </div>
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> Nom </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${myAccount.user.lastName}</div>
   
    
  </div>
  
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> Civilite </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${myAccount.civilite}</div>
   
    
  </div>
  <br>
<div class="row">
       
  
    <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Telepphone</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${myAccount.telephone}</div>
    <br>
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Email</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${myAccount.user.email}</div>
    
    
  </div>
  
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Poste</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">respo</div>
    
    
  </div>
  
  
  <br>

  
 





 
    
  <br> 
  <br>

</div>

 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>
<script>

$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

</body>

</html>

 

	   
    
 