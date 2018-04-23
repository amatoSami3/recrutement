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



<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">mon compte</a>  
    <a style="align:center" class="btn btn-success pull-right" href="<c:url value='/edit-${myAccount.user_id}-Candidat' />"> Modifier Mon profil</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

 <div class="container">
  <h2>Mon compte</h2>
  <p>The .table-re difference:</p>                      
   
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
         <td>statut</td><td>date de modification</td><td>type</td><td>candidat</td><td>offre</td>
      
	
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        
            
            <td>${myAccount.civilite}</td>
            <td>${myAccount.telephone}</td>
            <td>${myAccount.dateNaissance}</td>
            <td>${myAccount.ville}</td>
            <td>${myAccount.experience}</td>
            <td>${myAccount.formation}</td>
             
       
             
           
       
    </tr>
    </tbody>
  </table>
  </div>
</div>



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

 

	   
    
