<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
  
 
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	  
      <a class="navbar-brand" href="#">Logo</a>
      </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="./offreDetail"> <span class="glyphicon glyphicon-home "></span> &nbsp; Home</a></li>
		<li><a href="../mesCandidatures"> <span class="glyphicon glyphicon-folder-open "></span> &nbsp; mes candidatures</a></li>
     
      <li><a href="../newCandidatureSpo"> <span class="glyphicon glyphicon-envelope "></span> &nbsp;  candidature spontanée</a></li>
 	 
 	  <li><a href="./cv"> <span class="glyphicon glyphicon-home "></span> &nbsp; cv</a></li>
      </ul>
 	  
	<ul class="nav navbar-nav navbar-right">
<%-- 	<li><a href="#"> <span class=" "></span> &nbsp; <sec:authentication property="principal.username" /> </a></li> --%>
        <li><a href="../myAccount/#"><span class="glyphicon glyphicon-user"></span> <sec:authentication property="principal.username" /></a></li>
        <li><a href="../../logout"><span class="glyphicon glyphicon-log-out"></span> Logout </a></li>
    </ul>
    </div>
  </div>
</nav>


 		
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add User</title>
    
<style>
 	
    .error {
        color: #ff0000;
    }
</style>
 <link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>

 
<body>



     
    <form:form method="POST" modelAttribute="offre">
        <form:input type="hidden" path="idOffre" id="idOffre"/>
         
         
         <div class="form-group">
			        <label class="col-md-4 control-label">titre</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="titre" id="titre" title="titre" placeholder="titre" class="form-control" path="titre" type="text" required="true"/>
			          	<form:errors path="titre" cssClass="error"/>
			          </div>
			        </div>
			      </div>
            
            
            <div class="form-group">
			       <label class="col-md-4 control-label">typeOffre</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
			            <form:select path="typeOffre" name="typeOffre" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Please select your country ---"/>
			             	<form:option value="stage" label="stage"/>
			             	<form:option value="emplois" label="emplois"/>
			             	<form:option value="freelance" label="freelance"/>
						 
							 
			            </form:select>
			            <form:errors path="ville" cssClass="error"/>
			          </div>
			        </div>
			      </div>
         
               
               
            	<div class="form-group">
			        <label class="col-md-4 control-label">profil</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="profil" id="profil" title="profil" placeholder="profil" class="form-control" path="profil" type="text" required="true"/>
			          	<form:errors path="profil" cssClass="error"/>
			          </div>
			        </div>
			      </div>
              
              
         <div class="form-group">
			        <label class="col-md-4 control-label">date d'expiration</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input type="date" name="dateExpir" id="dateExpir" title="dateExpir" placeholder="dateExpir" class="form-control" path="dateExpir" type="text" required="true"/>
			          	<form:errors path="dateExpir" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
	   <div class="form-group">
			        <label class="col-md-4 control-label">profil</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="description" id="description" title="description" placeholder="description" class="form-control" path="description" type="text" required="true"/>
			          	<form:errors path="description" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
         
         <div class="form-group">
			        <label class="col-md-4 control-label">datPub</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input type="date" name="datPub" id="datPub" title="datPub" placeholder="datPub" class="form-control" path="datPub" type="text" required="true"/>
			          	<form:errors path="datPub" cssClass="error"/>
			          </div>
			        </div>
			      </div>
            
              
         
             <div class="form-group">
			        <label class="col-md-4 control-label">profil</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="employee" id="employee.user_id" title="employee.user_id" placeholder="description" class="form-control" path="employee.user_id" type="text" required="true"/>
			          	<form:errors path="employee.user_id" cssClass="error"/>
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
	                           <input type="submit" value="Update"/>
	                        </c:when>
	                        <c:otherwise>
	                           <input type="submit" value="Register"/>
	                        </c:otherwise>
	        			</c:choose>

			        </div>
					

      			</div>
   
           
    </form:form>
    <br/>
    <br/>
    Go back to <a href="<c:url value='/offres' />">Liste de tous les offres</a>
</body>
</html>