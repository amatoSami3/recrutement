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
  <title>Liste des utilisateures</title>
</head>

<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Liste des utilisateurs</a>
    </div>

​<div class="container">
  
	   <div class="table-responsive">          
  <table class="table">
    <thead>
       
        <tr>
         <td><strong> Enabled</strong></td>
         <td><strong> Prenom</strong></td>
         <td><strong> Nom</strong></td>
         <td><strong> Adresse e-mail</strong></td>
           
         
        </tr>
          </thead>
    <tbody id="myTable">
        <c:forEach items="${candidats}" var="p">
            <tr>
            <td><strong> <font color="red"> ${p.enabled}</font>    </strong></td>
            <td>${p.name}</td>
            <td>${p.lastName}</td>
            <td>${p.email}</td>
         
           
            <td><a class="btn btn-success" href="<c:url value='/${p.user_id}-activer' />">Activer</a></td>
         
          <td><a class="btn btn-danger" href="<c:url value='/${p.user_id}-desactiver' />">Desactiver</a></td>
        
          
            </tr>
        </c:forEach>
         </tbody>
  </table>
  </div>
</div>
   

</body>

</html>