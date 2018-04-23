 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>


 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajouter un modele</title>
    
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
    <a  class="alert-link" style="font-size:50px">Ajout d'un modele</a>
    <!--     <button type="button" class="btn btn-primary btn-lg pull-right">Large button</button> -->
	</div>

     
    <form:form class="form-horizontal" method="POST" modelAttribute="modele" >
        <form:input type="hidden" path="idModele" id="idModele"/>
            
			       <div class="form-group">
			       <label class="col-md-4 control-label">type de modele</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
			            <form:select path="type" name="type" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- selectionnez le type de modele ---"/>
			             	<form:option value="entretien" label="entretien"/>
			             	<form:option value="refus" label="refus"/>
							<form:option value="traitement en interne" label="traitement en interne"/>
							<form:option value="regete apres entreien" label="regete apres entreien"/>
							 
							 
			            </form:select>
			            <form:errors path="type" cssClass="error"/>
			          </div>
			        </div>
			      </div>
 
            
            
	    
			      
			      	      
			      
			 
			      
     		 <div class="form-group">
    			<label class="col-md-4 control-label">Modele</label>
			    <div class="col-md-4 selectContainer">
			    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
                
    		   
    		    <form:textarea path="modelee" class="form-control" rows="9" />
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