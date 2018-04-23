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
<title>Insert title here</title>
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
    
    
</style>
<body>

<div class="container-fluid">
  <h1>Bienvenue dans notre site </h1>
  <p>Nos offres</p>
  <div style="background-color:lavenderblush;"> <h2>information generale </h2></div>
  <c:forEach items="${offres}" var="p">
  <div class="row">
       
  
    <div class="col-sm-4" style="background-color:3FD6D6;"><strong> titre </strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${p.titre}</div>
    
    
  </div>



 <div class="row">
       
  
    <div class="col-sm-4" style="background-color:F4F7F7;"><strong>type</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${p.typeOffre}</div>
    <br>
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>formation</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.formation}</div>
    
    
  </div>
  
  <br>

 <div style="background-color:lavenderblush;"> <strong>description</strong></div>

<div class="row">
       
  
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>experience</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${p.experience}</div>
    
    
  </div>





<div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>description</strong> </div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.description}</div>
    
    
  </div>
  

  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>fonction</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.fonction}</div>
    
    
  </div>
  <br>
  
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>date de publication</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.datPub}</div>
    
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>date de expiration</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.dateExpir}</div>
    
    
  </div>
  
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>ville</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${p.ville}</div>
    
    
  </div>
  <br>



    
 <a href="/${p.idOffre}-postuler" class="btn btn-info" role="button">Postuler</a>

  </c:forEach>
  
 
</div>
 
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>