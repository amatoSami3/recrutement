<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file = "header.jsp" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <title>Liste des candidats</title>
</head>

<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Liste de candidats</a>
    </div>

€<div class="container">
  
	   <div class="table-responsive">          
  <table class="table">
    <thead>
       
        <tr>
        
         <td><strong> Prenom</strong></td>
         <td><strong> Nom</strong></td>
         <td><strong> Adresse e-mail</strong></td>
         <td><strong> Civilite</strong></td>
         <td><strong> T&Eacute;l&Eacute;phone</strong></td>
         <td><strong> Date de naissance</strong></td>
         <td><strong> Ville</strong></td>
         <td><strong> Experience</strong></td>
         <td><strong> Formation</strong></td> 
         
        </tr>
          </thead>
    <tbody id="myTable">
        <c:forEach items="${candidats}" var="p">
            <tr>
            <td>${p.user.name}</td>
            <td>${p.user.lastName}</td>
            <td>${p.user.email}</td>
            <td>${p.civilite}</td>
            <td>${p.telephone}</td>
            <td>${p.dateNaissance}</td>
            <td>${p.ville}</td>
            <td>${p.experience}</td>
            <td>${p.formation}</td>
           
            

          
            </tr>
        </c:forEach>
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

</body>

</html>