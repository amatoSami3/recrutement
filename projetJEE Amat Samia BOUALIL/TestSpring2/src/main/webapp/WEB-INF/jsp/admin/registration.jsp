<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
 
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>ajout d'employ&eacute;</title>

 
 

 
<style>

.btn-block {
    display: block;
    width: 17%;
    margin:30px 150px ;
   
}
#login-box {
	width: 80%;
	padding: 20px;
	margin: 30px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
<link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<form:form action="/" method="get">
		<button class="btn btn-md btn-warning btn-block" type="Submit">Go To Login Page</button>
	</form:form>	
	
	<div id="login-box">
	<div class="container">
	 <form:form method="POST" class="form-horizontal" modelAttribute="user" action="/registrationA">
       
        
           <div class="form-group">
			        <label class="col-md-4 control-label">Prenom</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="name" id="adresse" title="name" placeholder="prenom" class="form-control" path="name" type="text" required="true"/>
			          	<form:errors path="name" cssClass="error"/>
			          </div>
			        </div>
			      </div>
         
         <div class="form-group">
			        <label class="col-md-4 control-label">Nom</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="lastName" id="adresse" title="lastName" placeholder="Nom" class="form-control" path="lastName" type="text" required="true"/>
			          	<form:errors path="lastName" cssClass="error"/>
			          </div>
			        </div>
			      </div>
           
           
           <div class="form-group">
			        <label class="col-md-4 control-label">Adresse mail</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="email" id="email" title="email" placeholder="Adresse email" class="form-control" path="email" type="email" required="true"/>
			          	<form:errors path="email" cssClass="error"/>
			          </div>
			        </div>
			      </div>
			      
		   <div class="form-group">
			        <label class="col-md-4 control-label">Mot de pass</label>
			        <div class="col-md-4  inputGroupContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
			            <form:input name="password" id="password" title="password" placeholder="Mot de pass" class="form-control" path="password" type="password" required="true"/>
			          	<form:errors path="password" cssClass="error"/>
			          </div>
			        </div>
			      </div>
     
            

			      
			      <div class="form-group">
			       <label class="col-md-4 control-label">Role</label>
			        <div class="col-md-4 selectContainer">
			          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			            <form:select path="roles" name="roles" class="form-control selectpicker" required="true">
			              	<form:option value="" label="--- Selectionnez le role ---"/>
			             	<form:option value="2" label="admin"/>
			             	<form:option value="3" label="rh"/>
			             	<form:option value="4" label="responsable service"/>
			             
			            </form:select>
			            <form:errors path="roles" cssClass="error"/>
			          </div>
			        </div>
			      </div>
            
            
             <div class="form-group">
		     	
			        <label class="col-md-3 control-label"></label>
			        <label class="col-md-4 control-label"></label>
			        <div class="col-md-5">
    
            
                   
                            <input class="btn btn-lg btn-primary btn-block" type="submit" value="Register"/>
                      
          </div>
					

      			</div>
        
    </form:form>
    
    </div>
    </div>

</body>
</html>