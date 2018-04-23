 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "header.jsp" %>

<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Mes documents</title>
    
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
.btn-danger{
 background-color: #e60000 !important;
}
.btn-primary{
 background-color: #009999 !important;
}

</style>
<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">Mes documents</a>
    <a style="align:center" class="btn btn-danger pull-right" href="<c:url value='/newDocument' />">Ajouter un document</a> <br>
     <!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>
     
	
	​<div class="container">
  

 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th></th>
        <th> <Strong><font color="#009999"> Date de mise &Aacute; jour</font></Strong></th>
        <th><Strong><font color="#009999"> Type</font></Strong></th>
        <th><Strong><font color="#009999">Document</font></Strong></th>
        
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${documents}" var="p">
         <tr> 
              
            <td>  </td>
             <td>${p.dateMsj}</td>
             <td>${p.type}</td>
            
            <td> <a href="/upload-dir/${p.img2}">Voir le document</a></td>
            
            <td><a href="<c:url value='/edit-${p.idDocument}-Document' />" class="btn btn-primary pull-right">Modifer</a></td>
            <td><a href="<c:url value='/delete-${p.idDocument}-Document' />" class="btn btn-primary pull-right">Supprimer</a></td>
           
            
            
           
             
           </tr>
        </c:forEach>
    </tbody>
  </table>
  </div>
</div>
<br><br>

 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>
</body>

</html>

 