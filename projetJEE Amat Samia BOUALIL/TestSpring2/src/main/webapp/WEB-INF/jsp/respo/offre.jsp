<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>


 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajouter une offre</title>
    
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

<div class="alert alert-info clearfix" style="margin-top:-20px">
    <a  class="alert-link" style="font-size:50px">demande d'une offre</a>
    <!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

     
    <form:form class="form-horizontal" method="POST" modelAttribute="offre" >
        <form:input type="hidden" path="idOffre" id="idOffre"/>
         
         
         <div class="form-group">
			        <label class="col-md-4 control-label">Titre de l'offre</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
			            <form:input name="titre" id="titre" title="titre" placeholder="titre" class="form-control" path="titre" type="text" required="true"/>
			          	<form:errors path="titre" cssClass="error"/>
			          </div>
			        </div>
			      </div>
            
            
            <div class="form-group">
			       <label class="col-md-4 control-label">Type de l'offre</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
			            <form:select path="typeOffre" name="typeOffre" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Selectionnez le type de l'offre ---"/>
			             	<form:option value="Stage" label="stage"/>
			             	<form:option value="Emplois" label="emplois"/>
			             	<form:option value="Freelance" label="freelance"/>
						 
							 
			            </form:select>
			            <form:errors path="ville" cssClass="error"/>
			          </div>
			        </div>
			      </div>
         
               
               
            	<div class="form-group">
			        <label class="col-md-4 control-label">Profil</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			            <form:input name="profil" id="profil" title="profil" placeholder="profil" class="form-control" path="profil" type="text" required="true"/>
			          	<form:errors path="profil" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
			       <div class="form-group">
			       <label class="col-md-4 control-label">Ville</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
			            <form:select path="ville" name="ville" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Selectionnez votre ville ---"/>
			             	<form:option value="rabat" label="rabat"/>
			             	<form:option value="settat" label="settat"/>
			             	<form:option value="Mohmadia" label="Mohamadia"/>
							<form:option value="Csablanca" label="Csablanca"/>
							<form:option value="fes" label="fes"/>
							<form:option value="ifran" label="ifran"/>
							<form:option value="oujda" label="oujda"/>
							<form:option value="kneitra" label="kneitra"/>
							<form:option value="essaouira" label="essaouira"/>
							 
							 
			            </form:select>
			            <form:errors path="ville" cssClass="error"/>
			          </div>
			        </div>
			      </div>
              
              
         <div class="form-group">
			        <label class="col-md-4 control-label">date d'expiration</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
			            <form:input type="date" name="dateExpir" id="dateExpir" title="dateExpir"   class="form-control" path="dateExpir" required="true"/>
			          	<form:errors path="dateExpir" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
			      
			       <div class="form-group">
			       <label class="col-md-4 control-label">Formation</label>
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
			       <label class="col-md-4 control-label">Experience</label>
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
			        <label class="col-md-4 control-label">Description</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-edit;"></i></span>
			            <form:textarea name="description" id="description" title="description" placeholder="Description" class="form-control" path="description"  required="true"/>
			          	<form:errors path="description" cssClass="error"/>
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
	                           <input type="submit" class="btn btn-primary"  value="Enregistrer"/>
	                        </c:when>
	                        <c:otherwise>
	                           <input type="submit" class="btn btn-primary" value="Valider"/>
	                        </c:otherwise>
	        			</c:choose>

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