<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Ajout candidature</title>
 
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>
 
     
    <form:form method="POST" modelAttribute="candidature">
        <form:input type="hidden" path="idCandidatures" id="idCandidatures"/>
        
             <label for="profil">profil: </label> 
                <form:input path="profil" id="profil"/>
                <form:errors path="profil" cssClass="error"/>
                
    		    <label for="comment">motivation:</label>
    		    <form:textarea path="motivatio" class="form-control" rows="5" />
      
      
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
               
           
      
    </form:form>
    <br/>
    <br/>
    Go back to <a href="<c:url value='/candidatures' />">Liste de tous les produits</a>
</body>
</html>