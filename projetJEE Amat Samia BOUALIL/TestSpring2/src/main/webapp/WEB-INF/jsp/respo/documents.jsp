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
<body>
     
	
	​<div class="container">
  	<h2>Mes documents</h2>
  	                    

 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th></th>
        <th>Date de mise &Aacute; jour</th>
        <th>type</th>
        <th>document</th>
        
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${documents}" var="p">
         <tr> 
              
            <td>  </td>
             <td>${p.dateMsj}</td>
             <td>cv</td>
            
            <td> <a href="/upload-dir/${p.img2}">Voir le document</a></td>
            
         
            
            
           
             
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

 