<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajout Produit</title>
 
<style>
 
    .error {
        color: #ff0000;
    }
    <style>
*{ margin=0px;
   padding=0px;
}

h1{
font: bold 20px Tahoma;
}

nav header {
display:block;
}

input {
    margin: 0 0 0.5em 20;
    border: 1px solid $grey;
    padding: 4px 6px;
    color: $dark_grey;
    font-size: pxtoem(12, 16);
  }

body {
  background: #f9f9f9;
  height: 100%;
  width: 100%;
  overflow-x: hidden;
  font-size: 0.9em;
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  color: #333; }


.container {  
  max-width: 1110px;
  min-width: 324px;
  margin: 50px auto 0px;
  background-color: $white;
  border: 1px solid lighten($grey, 1%); 
  border-bottom: 3px solid $grey;
}

#description {
display: -webkit-box;
-webkit-box-orient:horisontal;
border:1px solid #00b3b3;
}

#profil ,#infogenerale {
display: -webkit-box;
-webkit-box-orient:horisontal;
border:1px solid #00b3b3;
}



.marge {
margin-left: 2em;
}
.texti { 
padding: 5px 15px 5px 15px;
margin: 13px 30px;
   
}
.text { 
padding: 5px 15px 5px 15px;
margin: 13px 70px;
   
}
#date { 
margin: 130px -340px;
   
}
 #butt{
 margin: 0px 900px;
 height: 6%;
 width:9%;
 background-color: #00b3b3;
 border: #00b3b3;
 color:white;
 font-size: 0.98em;
}
#barre{  
 /* max-width: 1px;*/
  min-width:  124px;
  /*margin: 50px auto 0px;*/
  background-color: #00b3b3;
  height: 6%;
  margin: 0px 1px;
  padding: 15px 15px 0px 15px;
color :white;
}

#foot {
clear:both;
text-align :center;
padding:20px;
border-top:2px solid #00b3b3;
}
a{
color:#00b3b3;}


</style>



 
</head>
 






 

<body>
<div class="container">

   
	     <h3 id="barre">ajout de modele </h3> 
	     <form:form method="POST" modelAttribute="modele">
        <form:input type="hidden" path="idModele" id="idModele"/>
        <table>
            <tr>
                <td><label for="type">type: </label> </td>
                <td><form:input path="type" id="type"/></td>
                <td><form:errors path="type" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="modelee">modelee: </label> </td>
                <td><form:textarea rows="15" cols="100" path="modelee" id="modelee"/></td>
                <td><form:errors path="modelee" cssClass="error"/></td>
            </tr>
            
             <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>

	
<br> 



<div>
<br>
</div>
	
	
	<button  id ="butt" onclick="alert('offre ajouté')"> <span> Valider</span>  </button> <br> <br>


</form>



 


 
   <%-- <form:form method="POST" modelAttribute="modele">
        <form:input type="hidden" path="idModele" id="idModele"/>
        <table>
            <tr>
                <td><label for="type">type: </label> </td>
                <td><form:input path="type" id="type"/></td>
                <td><form:errors path="type" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="modelee">modelee: </label> </td>
                <td><form:input type="textarea" path="modelee" id="modelee"/></td>
                <td><form:errors path="modelee" cssClass="error"/></td>
            </tr>
            --%> 
               
            
    
   
    
    <footer id="foot">
  <a href="https://www.linkedin.com/in/amat-samiâ-boualil "> by amat samia boualil</a>
</footer>


</div>
    
</body>
</html>