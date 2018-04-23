<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file = "header.jsp" %>
 
  
  

<html>
 	

 		
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajout du cv</title>
    
<style>
 	
    .error {
        color: #ff0000;
    }
    
    
    
     .btn-info  {
    background-color: #009999 !important;
    }
    
    .doc{
        text-align:center;
    }

</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>




<body>
<div class="docc">
  
	    <form:form method="POST" modelAttribute="document" enctype="multipart/form-data"> 
    
        <form:input type="hidden" path="idDocument" id="idDocument"/>
          <div class="form-inline">
          
			            <label   >Type</label>
			            <form:select path="type" name="type" class="form-control  " required="true">
			              	<form:option value="" label="--- Selectionnez le type de document ---"/>
			             	<form:option value="cv" label="cv"/>
			             	<form:option value="lettre de motivation" label="Lettre de motivation"/>
			          	 
			            </form:select>
			            <form:errors path="type" cssClass="error"/>
			           
	          </div>
			        
		 
         <div class="form-inline">
      
                <label for="img2">document</label>  
                        
                   <input type="file" name="file2" id="file2"  ></input>
                   <form:errors path="img2" class="error" />
 				
         </div>
         
             <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" class="btn btn-info pull-right" value="Enregistrer les modifications"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" class="btn btn-info pull-right" value="Valider"/>
                        </c:otherwise>
                    </c:choose>
    </form:form>
    
                      
    
<!--    	<script src="../../webjars/jquery/1.9.1/jquery.min.js"></script> -->
<!-- 	<script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
</div>

</html>