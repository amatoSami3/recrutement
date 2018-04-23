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
  </head>
<body>
 
    
   


	<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px"> les modeles</a>
    <a style="align:center" class="btn btn-info pull-right" href="<c:url value='/newModele' />">Ajouter un modele</a> 
<!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>


	<div class="container" >
		<div class="col-md-3"></div>
		<table class="col-md-9 table table-striped" style="width: 50%;" >
			<thead>
				<tr>
					<th>Type</th>
					<th>Modele :</th>

				</tr>
			</thead>
			<tbody>
			<c:forEach items="${modeles}" var="c">
			    <tr>
			    	<td>${c.type}</td>
					<td>${c.modelee}</td>
           			<td><a class="btn btn-info pull-right" href="<c:url value='/edit-${c.idModele}-Modele' />">modifier</a></td>
					<td><a class="btn btn-warning" href="<c:url value='/delete-${c.idModele}-Modele' />">Supprimer</a></td>
			    </tr>
			</c:forEach>
			</tbody>
		</table>

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