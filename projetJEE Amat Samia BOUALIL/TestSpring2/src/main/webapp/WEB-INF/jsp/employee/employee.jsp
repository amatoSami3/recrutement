 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ include file = "header.jsp" %>

<html>
 	


 		
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>modification du profil</title>
    
<style>
 	
    .error {
        color: #ff0000;
    }
</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>



 

 


<body>

	
	 <form:form class="form-horizontal" method="POST" modelAttribute="employee" >
	  <form:input type="hidden" path="user_id" id="user_id"/>
       
         
            
            
            
			      
		     <!-- has-error -->
		     	  
		     

		      
			      
			      
			      
			     <div class="form-group">
			        <label class="col-md-4 control-label">Telephone</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
			            <form:input name="telephone" id="telephone" title="telephone" placeholder="#PhoneNumber" class="form-control" path="telephone" type="text" required="true"/>
			          	<form:errors path="telephone" cssClass="error"/>
			          </div>
			        </div>
			     </div>
            
            
            
	            <div class="form-group">
		     	
			        <label class="col-md-3 control-label"></label>
			        <label class="col-md-4 control-label"></label>
			        <div class="col-md-5">
<!-- 			        	<input type="submit" value="Register"/> -->
				        <c:choose> 
	                        <c:when test="${edit}">
	                           <input type="submit" class="btn btn-success pull-right" value="Enregistrer les modifcations"/>
	                        </c:when>
	                        <c:otherwise>
	                           <input type="submit" class="btn btn-success pull-right"  value="Valider"/>
	                        </c:otherwise>
	        			</c:choose>

			        </div>
					

      			</div>
   
    </form:form>
    
    
    
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