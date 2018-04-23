 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>


 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>contacter un candidat</title>
    
<style>
 	
    .error {
        color: #ff0000;
    }
</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>

 
<body>

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px"> :) </a>
    <!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

     
    <form:form class="form-horizontal" method="POST" modelAttribute="cantacter" >
        <form:input type="hidden" path="id" id="id"/>
         
			     
	    
			      
			      <div class="form-group">
			       <label class="col-md-4 control-label">Modele</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			            <form:select path="type" items="${modeles}" multiple="true" itemValue="idModele" name="modele"  itemLabel="type" class="form-control input-sm" />
			           
			            <form:errors path="type" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
		
               <div class="form-group">
		     	
			        <label class="col-md-3 control-label"></label>
			        <label class="col-md-4 control-label"></label>
			        <div class="col-md-5">
<!-- 			        	<input type="submit" value="Register"/> -->
 
	                           <input type="submit" class="btn btn-success" value="Valider"/>
	                       

			        </div>
			        </div>
			        
					
   
           
    </form:form>
    <br/>
    <br/>
    
     <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>
 
</body>
</html>