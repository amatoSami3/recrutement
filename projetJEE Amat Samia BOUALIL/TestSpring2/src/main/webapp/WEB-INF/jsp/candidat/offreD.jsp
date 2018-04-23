<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "header.jsp" %>
<html lang="en">

 
 	
<head>
  
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Detail de l'offre</title>
</head>
<style>

.col-sm-4 {
    width: 18.33333333%;
    font-size: 14px;
}

body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size:14px;
    line-height: 2.52857143;}
    
   
  .bg-grey {
      background-color: #f6f6f6;
  }  
  
  .btn-info  {
    background-color: #009999 !important;
}
</style>
<body>

 
  
<div id="detail" class="container-fluid bg-grey">
 
 <h1> Nos offres</h1>
  <p></p>
  
  
    
  <h3> <strong>  <font color="#009999"> Information generale </font> </strong> </h3>
   
  
 
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> Titre </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.titre}</div>
   
    
  </div>
<div class="row">
       
  
    <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Type de l'offre</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.typeOffre}</div>
    <br>
    
  </div>
   <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Fonction</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.fonction}</div>
    
    
  </div>
  
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Ville</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.ville}</div>
    
    
    

  </div>
  
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Date de publication</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.datPub}</div>
    
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Date de expiration</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.dateExpir}</div>
    
    
  </div>
 
  
  <br>

 
   <h3> <strong>  <font color="#009999"> Description </font> </strong> </h3>
   
    <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Formation</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.formation}</div>
    
    
  </div>
<div class="row">
       
  
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Experience</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.experience}</div>
    
    
  </div>





<div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Description</strong> </div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.description}</div>
        
         <a href="/${offreD.idOffre}-postuler" class="btn btn-info" role="button">Postuler</a>
    
    
  </div>
  

 
  <br>
  
  
  
 
  
 
</div>

 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>

 
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>