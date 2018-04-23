<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "header.jsp" %>
<html lang="en">
<head>
</head>
<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Employ&eacute;s</a>
    <a style="align:center" class="btn btn-success pull-right" href="<c:url value='/registrationA' />">Ajouter un employ&eacute;</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> --> 

	</div>

	 
    
    
    <div class="container">
  <h2>employees</h2>
  <p> :</p>                      
   
  <input class="form-control" id="myInput" type="text" placeholder="Cherchrer..">
  <br>
 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
          <td> Nom</td>
          <td> Prenom</td>
          <td> role</td>
      
	 
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <c:forEach items="${employees}" var="p">
            <tr>
            
            <td>${p.name}</td>
        
            <td>${p.lastName}</td>
            
           
             <td><a class="btn btn-info pull-right" href="<c:url value='/edit-${p.user_id }-Employee' />">Modifeir</a></td>
            <td><a class="btn btn-warning" href="<c:url value='/delete-${p.user_id}-Employee' />">Supprimer</a></td>
             
            </tr>
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