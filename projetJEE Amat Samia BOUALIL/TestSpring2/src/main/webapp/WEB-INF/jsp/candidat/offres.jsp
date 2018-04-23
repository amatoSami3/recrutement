<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "header.jsp" %>
<html lang="en">

 
 	
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Offres</title>
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
  
   .container-fluidg {
      padding: 60px 50px;
  }
    .btn-info  {
    background-color: #009999 !important;
}
	 
</style>
<body>

 <div id="offres" class="container-fluidg bg-grey">
  
   	  <h1> <font color="red"> ${message }</font> </h1>
   	  
   	  
     <h2><strong>Nos offres</strong></h2>
     <br>
    
     
  <c:forEach items="${offres}" var="p">
 
     <h2> <strong>  <font color="#009999"> ${p.titre}</font> </strong> </h2>
   
      
   <div class="well well-lg">
  
   
  <div class="row">
       
  
    <div class="col-sm-4"  ><strong> Profil :</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${p.profil}</div>
      
    
  </div>
  <br>
  
  <div class="row">
       
        <div class="col-sm-4"  ><strong>Description :</strong> </div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.description}</div>
        
       
  </div>
  <div class="row">
       
  
    <div class="col-sm-4"  ><strong> Date de publication :</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${p.datPub}</div>
       
     <a href="/afficher-${p.idOffre}-detail" class="btn btn-info" role="button">Detail</a>
       
    
  </div>
  
  </div>
    <br>
 

  </c:forEach>
  
 
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