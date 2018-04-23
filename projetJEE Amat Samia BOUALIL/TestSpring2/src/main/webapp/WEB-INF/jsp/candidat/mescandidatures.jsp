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
  <title>Mes candidatures</title>
  
</head>

 

<body>
​<div class="container">
  <h2> <strong>  <font color="#009999"> Mes candidatures</font> </strong> </h2>
  <p>Voici les candidatures que vous avez envoye</p>     
  <br>                 

 <div class="table-responsive">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th></th>
        <th> <font color="#009999"> date</font></th>
        <th><font color="#009999"> type de candidatures</font> </th>
        <th><font color="#009999"> Offre</font></th>
        <th><font color="#009999"> Statut</font>  </th>
        
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${mescandidatures}" var="p">
       
     
      <tr>
        <td><span class="glyphicon glyphicon-check"></span></td>
        <td>${p.dateModification}</td>
        <td>${p.type}</td>
        <td>${p.offre.titre}</td>
        <td><Strong><font color="red"> ${p.statut}</font></Strong> </td>
      
       
      </tr>
      
       </c:forEach>
    </tbody>
  </table>
  </div>
</div>
<br><br><br><br>


 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>

</body>

</html>