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
  <title>Insert title here</title>
  
</head>

<style>
.btn-primary{
	 background-color: #009999 !important;
	}
	
 
</style>



<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">candidatures traite par le responsable</a>
     <!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

<div class="container">
 
  <p>les candidatures  traite par le responsable</p>                      
   
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
         
         <td><strong> <font color="#009999"> Date de modification</font> </strong></td>
     	 <td><strong> <font color="#009999"> Offre</font> </strong></td>
         <td><strong> <font color="#009999"> Candidat</font> </strong></td>
         <td><strong> <font color="#009999"> Statut</font> </strong> </td>
      
	
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <c:forEach items="${candidatures}" var="p">
            <tr>
            
            <td>${p.dateModification}</td>
            <td>${p.offre.titre} </td> 
            <td>${p.candidat.user.name}${p.candidat.user.lastName} </td>
            <td> ${p.statut} </td>
          
            
       	    <td><a class="btn btn-info pull-right" href="<c:url value='/${p.idCandidatures}-envoyer' />">envoyer</a></td>
       	    <td><a class="btn btn-primary" href="<c:url value='/${p.idCandidatures}-afficher' />">afficher le candidat</a></td>
       	    <td><a class="btn btn-info" href="<c:url value='/${p.idCandidatures}-entretien' />">programmer un entretien</a></td>
       	    <td><a class="btn btn-danger" href="<c:url value='/delete-${p.idCandidatures}-Candidatures' />">delete</a></td>
        </c:forEach>
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

 

	   
    
