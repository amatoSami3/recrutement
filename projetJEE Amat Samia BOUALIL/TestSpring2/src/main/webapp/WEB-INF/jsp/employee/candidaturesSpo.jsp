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
  <title>Candidatures spontane</title>
  
</head>
<style>
.btn-primary{
	 background-color: #009999 !important;
	}
</style>


<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">les candidatures spontan&eacute;</a>
    <a style="align:center" class="btn btn-info pull-right" href="<c:url value='/candidatSpontane' />"> Afficher les candidats postul&eacute;s</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

€‹<div class="container">
                     
   
  <input class="form-control" id="myInput" type="text" placeholder="Chercher..">
  <br>
 <div class="table-responsive">          
  <table class="table table-striped">
    <thead>
      <tr>
         <td><strong><font color="#009999"> Statut</font> </strong></td>
         <td><strong> <font color="#009999"> Date de modification</font></strong></td>
         <td><strong> <font color="#009999"> Motivation</font></strong></td>
      
	
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <c:forEach items="${candidaturesSpo}" var="p">
            <tr>
            <td><font color="red"> ${p.statut}</font></td>
            <td>${p.dateModification}</td>
             
            <td>${p.img}</td>
       
             
            <td><a class="btn btn-primary" href="<c:url value='/delete-${p.idCandidaturesSpo}-CandidaturesS2' />">Supprimer</a></td>
       	    
       	    <td><a class="btn btn-primary pull-right" href="<c:url value='/spo-${p.idCandidaturesSpo}-afficher' />">Afficher le candidat</a></td>
       
        </c:forEach>
    </tr>
    </tbody>
  </table>
  </div>
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

 

	   
    
