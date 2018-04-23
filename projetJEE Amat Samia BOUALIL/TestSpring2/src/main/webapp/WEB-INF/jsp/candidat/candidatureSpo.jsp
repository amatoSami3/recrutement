<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
    <title>Candidature spontane</title>
 
<style>
 	
    .error {
        color: #ff0000;
    }
    
     .btn-info  {
    background-color: #009999 !important;
}
</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
 
 
 
</head>
 
<body>
 
     
    <form:form method="POST" class="form-horizontal"  modelAttribute="candidatureSpo">
        <form:input type="hidden" path="idCandidaturesSpo" id="idCandidaturesSpo"/>
       
          
            
            
		
<div class="container">
  <h2> <strong>  <font color="#009999"> candidature spontan&eacute;</font> </strong> </h2>
    <br>
  <p>merci de saisir les  informations ci-desous afin d'enregister votre candidature spontane </p>
  
    <div class="form-group">
    			<label   >Profil</label>
			     
                <form:input path="profil" class="form-control"  id="profil"/>
                <form:errors path="profil" cssClass="error"/>
                </div>
			    
			   
                <br> 
                
   
    
    <div class="form-group">
    			<label  >Motivation</label>
                
    		   
    		    <form:textarea path="img" class="form-control" rows="9" />
    		    </div>
			    
  
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" class="btn btn-info pull-right" value="Enregistrer les modifications"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" class="btn btn-info pull-right" value="Valider"/>
                        </c:otherwise>
                    </c:choose>
             
       </div>
    </form:form>
    <br/>
      
    
<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>

 </body>
</html>