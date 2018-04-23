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
  <title>Affiche du candidat</title>
  
</head>



<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Affiche candidat</a>  
    <a style="align:center" class="btn btn-success pull-right" href="<c:url value='/${candidat.user_id}-afficherdocumentsRespo' />"> Voir ses documents</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
</div>

<div class="container-fluid">
  <h2>affiche de ${candidat.civilite} ${candidat.user.name} ${candidat.user.lastName} </h2>
 
  
  <br>         
  

<div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> Prenom </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.user.name}</div>
   
    
  </div>
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> Nom </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.user.lastName}</div>
   
    
  </div>
  
   
  <br>
  
   <div class="row">
       
  
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Date de naissance</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.dateNaissance}</div>
    
    
  </div>
<div class="row">
       
  
    <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Telepphone</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.telephone}</div>
    <br>
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Email</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.user.email}</div>
    
    
  </div>
  
 
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Ville</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.ville}</div>
    
    
  </div>
  
  <br>




<div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Formation</strong> </div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.formation}</div>
    
    
  </div>
  
  <div class="row">
       
  
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Experience</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${candidat.experience}</div>
    
    
  </div>
    
  <br> 
  <br>


 

   
</div>

 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>

</body>

</html>

 

	   
    
