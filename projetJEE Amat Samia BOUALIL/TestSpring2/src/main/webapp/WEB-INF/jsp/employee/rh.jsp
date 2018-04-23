 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ include file = "header.jsp" %>

<html>
 	
 		
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>espace rh</title>
    
<style>
 	
    .error {
        color: #ff0000;
    }
</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>



<body>

    <a style="align:center" class=" btn-foursquare" href="<c:url value='/newModele' />">Add modele</a> 

   
    
<!--    	<script src="../../webjars/jquery/1.9.1/jquery.min.js"></script> -->
<!-- 	<script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->



 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>

</body>




</html>