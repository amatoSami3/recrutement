<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "header.jsp" %>

<html lang="en">
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
.btn-primary{
 background-color: #009999 !important;
}
.btn-danger{
 background-color: #e60000 !important;
}

</style>

<body>
 
    
   


	<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">mes candidatures spontan&eacute;</a>
    <a style="align:center" class="btn btn-danger pull-right" href="<c:url value='/newCandidatureSpo' />">Ajouter une candidature spontan&eacute;</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>


	   <div class="container">
	   ${message}
 
  <h2> <strong>  <font color="#009999"> Mes candidatures spontan&eacute;</font> </strong> </h2>
                     
   <br>
  
 <div class="table-responsive">          
  <table class="table table-striped">
    <thead>
      <tr>
         <td><span class="glyphicon glyphicon-check"></span> <Strong><font color="#009999"> Statut</font></Strong></td>
         <td><Strong><font color="#009999"> Date de modification</font></Strong></td>
         <td><Strong><font color="#009999"> Motivation</font></Strong></td>
      
	
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <c:forEach items="${candidaturesSpo}" var="p">
            <tr>
            <td><font color="red"> ${p.statut}</font></td>
            <td>${p.dateModification}</td>
             
            <td>${p.img}</td>
       
             
            <td><a class="btn btn-primary" href="<c:url value='/delete-${p.idCandidaturesSpo}-CandidaturesS' />">Supprimer</a></td>
       	     <td><a class="btn btn-primary" href="<c:url value='/edit-${p.idCandidaturesSpo}-CandidaturesS' />">Modifier</a></td>
       	    													 
        </c:forEach>
    </tr>
    </tbody>
  </table>
  </div>
</div>
	
<br><br>
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