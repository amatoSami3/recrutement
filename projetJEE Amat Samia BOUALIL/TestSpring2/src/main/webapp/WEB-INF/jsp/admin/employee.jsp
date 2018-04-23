<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajout d'un compte employ&eacute; </title>
 
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>
	 <form:form class="form-horizontal" method="POST" modelAttribute="employee" >
	  <form:input type="hidden" path="user_id" id="user_id"/>

 
 <!-- has-error -->
		     	  
		      <div class="form-group">
			       <label class="col-md-4 control-label">Civilit&eacute;</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
			            <form:select path="civilite" name="civilite" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Please select our civilite ---"/>
			             	<form:option value="Mlle" label="Mlle"/>
			             	<form:option value="Mme" label="Mme"/>
			             	<form:option value="Mr" label="Mr"/>
			             
	 
							 
			            </form:select>
			            <form:errors path="civilite" cssClass="error"/>
			          </div>
			        </div>
			      </div>
		      			      		    
		        
			     <div class="form-group">
			        <label class="col-md-4 control-label">T&eacute;l&eacute;phone</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
			            <form:input name="telephone" id="telephone" title="telephone" placeholder="Telephone" class="form-control" path="telephone" type="text" required="true"/>
			          	<form:errors path="telephone" cssClass="error"/>
			          </div>
			        </div>
			     </div>
			     
			      <div class="form-group">
			        <label class="col-md-4 control-label">Date de recrutement</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
			            <form:input type="date" name="dateRecrutement" id="dateRecrutement" title="dateRecrutement" class="form-control" path="dateRecrutement"  required="true"/>
			          	<form:errors path="dateRecrutement" cssClass="error"/>
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
	                           <input type="submit" value="Modifier"/>
	                        </c:when>
	                        <c:otherwise>
	                           <input type="submit" value="Valider"/>
	                        </c:otherwise>
	        			</c:choose>

			        </div>
					

      			</div>
   
    </form:form>
    
    
 
     
     
    <br/>
    <br/>
 
</body>
</html>