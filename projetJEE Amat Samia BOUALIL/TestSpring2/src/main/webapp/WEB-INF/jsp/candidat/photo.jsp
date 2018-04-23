 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ include file = "header.jsp" %>

<html>
 	


 		
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>profil</title>
    
<style>
 	
    .error {
        color: #ff0000;
    }
    .btn-primary{
	 background-color: #009999 !important;
	}
</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>



 

 


<body>

	
	 <form:form class="form-horizontal" method="POST" modelAttribute="candidat" enctype="multipart/form-data" >
	  <form:input type="hidden" path="user_id" id="user_id"/>
       
         
            
            
            
			      
		     <!-- has-error -->
		     
		     	<div class="form-group">
			        <label class="col-md-4 control-label"><font color="#009999"> Profil</font></label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			            <form:input name="profil" id="profil" title="profil" placeholder="profil" class="form-control" path="profil" type="text" required="true"/>
			          	<form:errors path="profil" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
			      
		     	  
		      <div class="form-group">
			       <label class="col-md-4 control-label"><font color="#009999"> Civilit&eacute;</font></label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			            <form:select path="civilite" name="civilite" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Selectionnez votre  civilite ---"/>
			             	<form:option value="Mlle" label="Mlle"/>
			             	<form:option value="Mme" label="Mme"/>
			             	<form:option value="Mr" label="Mr"/>
			             
	 
							 
			            </form:select>
			            <form:errors path="civilite" cssClass="error"/>
			          </div>
			        </div>
			      </div>
		      			      		    
		        
			      
			      <div class="form-group">
			       <label class="col-md-4 control-label"> <font color="#009999"> Ville</font></label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			            <form:select path="ville" name="ville" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Selectionnez votre ville ---"/>
			             	<form:option value="rabat" label="rabat"/>
			             	<form:option value="settat" label="settat"/>
			             	<form:option value="Mohmadia" label="Mohamadia"/>
							<form:option value="Csablanca" label="Csablanca"/>
							<form:option value="fes" label="Norway"/>
							<form:option value="ifran" label="Oman"/>
							<form:option value="oujda" label="Pakistan"/>
							<form:option value="kneitra" label="kneitra"/>
							<form:option value="essaouira" label="essaouira"/>
							 
							 
			            </form:select>
			            <form:errors path="ville" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			   
			   	<div class="form-group">
			        <label class="col-md-4 control-label"><font color="#009999"> Adresse</font></label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
			            <form:input name="adresse" id="adresse" title="adresse" placeholder="adresse" class="form-control" path="adresse" type="text" required="true"/>
			          	<form:errors path="adresse" cssClass="error"/>
			          </div>
			        </div>
			      </div>

		     
			      <div class="form-group">
			        <label class="col-md-4 control-label"><font color="#009999"> Date de naissance</font></label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-hourglass"></i></span>
			            <form:input type="date" name="dateNaissance" id="dateNaissance" title="dateNaissance" placeholder="dateNaissance" class="form-control" path="dateNaissance" required="true"/>
			          	<form:errors path="dateNaissance" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
			      
			      
			     <div class="form-group">
			        <label class="col-md-4 control-label"> <font color="#009999"> T&eacute;l&eacute;phone</font></label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
			            <form:input name="telephone" id="telephone" title="telephone" placeholder="Telephone" class="form-control" path="telephone" type="text" required="true"/>
			          	<form:errors path="telephone" cssClass="error"/>
			          </div>
			        </div>
			     </div>
            
            <div class="form-group">
			       <label class="col-md-4 control-label"> <font color="#009999"> Formation</font></label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
			            <form:select path="formation" name="formation" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- selectionnez votre niveau de formation  ---"/>
			             	<form:option value="bac+1" label="bac+1"/>
			             	<form:option value="bac+2" label="bac+2"/>
			             	<form:option value="bac+3" label="bac+3"/>
							<form:option value="bac+4" label="bac+4"/>
							<form:option value="bac+5" label="bac+5"/>
							<form:option value="bac+6" label="bac+6"/>
							<form:option value="bac+7" label="bac+7"/>
							<form:option value="bac" label="bac"/>
							<form:option value="niveau bac" label="niveau bac"/>
							
							 
							 
			            </form:select>
			            <form:errors path="formation" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			       <div class="form-group">
			       <label class="col-md-4 control-label"> <font color="#009999"> Experience</font></label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
			            <form:select path="experience" name="experience" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- selectionnez votre experience ---"/>
			             	<form:option value="1 ans" label="1 ans"/>
			             	<form:option value="2 ans" label="2 ans"/>
							<form:option value="3 ans" label="3 ans"/>
							<form:option value="4 ans" label="4 ans"/>
							<form:option value="5 ans" label="5 ans"/>
							<form:option value="+5 ans" label="+5 ans"/>
							<form:option value="+10 ans" label="+10 ans"/>
							<form:option value="+15 ans" label="+15 ans"/>
							<form:option value="- 1 ans" label="- 1 ans"/>
							<form:option value="debutant" label="debutant"/>
							 
							 
							 
			            </form:select>
			            <form:errors path="experience" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
			       <div class="form-group">
                   <label for="photo" class="col-md-4 control-label"> <font color="#009999"> Photo</font></label>
			        <div class="col-md-4 selectContainer">
               
                        
                   <input type="file" name="file2" id="file2"  ></input>
                   <form:errors path="photo" class="error" />
 				
         </div> </div>
         
 
            
	            <div class="form-group">
		     	
			        <label class="col-md-3 control-label"></label>
			        <label class="col-md-4 control-label"></label>
			        <div class="col-md-5">
<!-- 			        	<input type="submit" value="Register"/> -->
				        <c:choose> 
	                        <c:when test="${edit}">
	                           <input type="submit" class="btn btn-primary pull-right" value="Enregistrer les modifcations"/>
	                        </c:when>
	                        <c:otherwise>
	                           <input type="submit" class="btn btn-primary pull-right"  value="Valider"/>
	                        </c:otherwise>
	        			</c:choose>

			        </div>
					

      			</div>
   
    </form:form>
    
    <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>
    
<!--    	<script src="../../webjars/jquery/1.9.1/jquery.min.js"></script> -->
<!-- 	<script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->

</body>




</html>