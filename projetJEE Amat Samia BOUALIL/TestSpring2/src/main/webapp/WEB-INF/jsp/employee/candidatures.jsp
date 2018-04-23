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
  <title>Les candidatures</title>
  
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
    <a  class="alert-link" style="font-size:50px">candidatures</a>
    <a style="align:center" class="btn btn-info pull-right" href="<c:url value='/candid' />"> afficher les candidats</a> <br> 
    <a style="align:center" class="btn btn-info pull-right" href="<c:url value='/candidatureTraiter' />"> candidatures trait&eacutees par le responsable</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

​<div class="container">
   <h1>${message}</h1>
   
  <p>les candidatures qui ne sont pas encore complaitement trait&eacute;</p>                      
   
  <input class="form-control" id="myInput" type="text" placeholder="Chercher..">
  <br>
 <div   class="container">          
  <table class="table table-striped">
    <thead>
      <tr>
         
         <td><strong> <font color="#009999"> Date de Modification</font>    </strong></td>
     	 <td><strong> <font color="#009999"> Offre           </font>    </strong></td>
         <td><strong> <font color="#009999"> Candidat        </font>    </strong></td>
         <td><strong> <font color="#009999"> Statut          </font>    </strong> </td>
      
	
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <c:forEach items="${candidatures}" var="p">
            <tr>
            
            <td>${p.dateModification}</td>
            <td>${p.offre.titre} </td> 
            <td>${p.candidat.user.name}${p.candidat.user.lastName} </td>
            <td> <font color="red"> ${p.statut}</font> </td>
          
            <td><a class="btn btn-primary" href="<c:url value='/${p.idCandidatures}-afficher' />">Afficher le candidat</a></td>
       	    <td><a class="btn btn-info pull-right" href="<c:url value='/${p.idCandidatures}-envoyer' />">Envoyer</a></td>
       	    <td><a class="btn btn-danger" href="<c:url value='/delete-${p.idCandidatures}-Candidatures' />">Supprimer</a></td>
       	    
        </c:forEach>
    </tr>
    </tbody>
  </table>
  </div>
</div>
<br>
<br>

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

 

	   
    
