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
  <title>Offres</title>
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
    <a  class="alert-link" style="font-size:50px">Offres demandées</a>
    
	</div>
	
 

 			
<div class="container">	
 
  <input class="form-control" id="myInput" type="text" placeholder="Chercher..">
  <br>
 	
	<a href="/newOffre"><em class="fa fa-pencil-square-o"></em>  </a>
	
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
      	 
          
         
         <td> <strong><font color="#009999"> Titre           </font>  </strong> </td>
         <td> <strong><font color="#009999"> Profil          </font>  </strong></td>
         <td> <strong><font color="#009999"> Ville           </font> </strong></td>
         <td> <strong><font color="#009999"> Experience          </font> </strong></td>
         <td> <strong><font color="#009999"> Formation          </font> </strong></td>
           
         <td> <strong><font color="#009999"> Type de l'Offre          </font></strong></td>
         <td> <strong><font color="#009999"> Date Expiration          </font></strong></td>
         <td> <strong><font color="#009999"> Description          </font></strong></td>
     
           
     
           
      
	
      </tr>
    </thead>
    <tbody>
      <tr>

        <c:forEach items="${offres}" var="p">
            <tr>
            <td>${p.titre}</td>
            <td>${p.profil}</td>
             <td>${p.ville}</td>
            
            <td>${p.experience}</td>
            <td>${p.formation}</td>
           
            <td>${p.typeOffre}</td>
             <td>${p.dateExpir}</td>
            <td>${p.description}</td>
            <td>${p.fonction}</td>
            
           
             <td><a class="btn btn-info pull-right" href="<c:url value='/edit-${p.idOffre}-Offre'  />">Modifier</a></td>
           
            <td><a  class="btn btn-primary" href="<c:url value='/${p.idOffre}-detailRH' />">Afficher</a></td>
            <td><a  class="btn btn-primary" href="<c:url value='/${p.idOffre}-publier' />">publier</a></td>
             <td><a  class="btn btn-danger" href="<c:url value='/delete-${p.idOffre}-Offre' />">Supprimer</a></td>
           
        </c:forEach>
    </tr>
    </tbody>
  </table>
  
 
  </div>
  </div>
	
			  
	
	
    <br/>
    <br/>
    
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