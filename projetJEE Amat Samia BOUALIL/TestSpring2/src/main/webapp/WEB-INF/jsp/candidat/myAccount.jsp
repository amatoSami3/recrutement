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
  <title>mon compte</title>
  
</head>
<style>
.btn-danger{
 background-color: #e60000 !important;
}

.topright {
    position: absolute;
    top: 220px;
    right: 16px;
    font-size: 18px;
}
</style>

<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Mon compte</a>  
    <a style="align:center" class="btn btn-info pull-right" href="<c:url value='/edit-${myAccount.user_id}-Candidat' />" > Modifier mon profil</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>




<div class="container-fluid">
  <h2>mon espace candidat</h2>
  <p>ci dessous vos informations personnel cliquez sur "modifer profil" si vous voulez modifier vos informations ou les mettre &Agrave; jour</p>                      
  <br><br><br><br>
   <div class="topright">
 
  <div class="card" style="width:400px">
     
    <img class="card-img-top" src="/upload-dir/${myAccount.photo}" alt="photo de ${myAccount.user.name}" width=100%  align=right >
  
    </div></div>
    <hr>
  
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><h3><strong> <font color="#009999">  Prenom </font> </strong></h3></div>
    <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.user.name}</h3></div>
   
    
  </div>
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><h3><strong>  <font color="#009999">  Nom </font>  </strong></h3></div>
    <div class="col-sm-8" style="background-color:F4F7F7;"> <h3>${myAccount.user.lastName}</h3></div>
   
    
  </div>
  
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><h3><strong> <font color="#009999">  civilite </font> </strong></h3></div>
    <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.civilite}</h3></div>
   
    
  </div>
  <br>
<div class="row">
       
  
    <div class="col-sm-4" style="background-color:F4F7F7;"><h3><strong><font color="#009999">  Telephone </font></strong></h3></div>
    <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.telephone}</h3></div>
    <br>
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><h3><strong><font color="#009999">  Email </font></strong></h3></div>
        <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.user.email}</h3></div>
    
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><h3><strong><font color="#009999">  Ville </font></strong></h3></div>
        <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.ville}</h3></div>
    
    
  </div>
  
  <br>

  
<div class="row">
       
  
        <div class="col-sm-4" style="background-color:F4F7F7;"><h3><strong><font color="#009999">  Experience </font></strong></h3></div>
    <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.experience}</h3></div>
    
    
  </div>





<div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><h3><strong><font color="#009999">  Formation </font></strong></h3> </div>
        <div class="col-sm-8" style="background-color:F4F7F7;"><h3>${myAccount.formation}</h3></div>
    
    
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

 

	   
    
