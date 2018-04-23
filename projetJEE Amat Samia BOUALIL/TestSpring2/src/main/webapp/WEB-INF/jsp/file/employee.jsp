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
</style>
 
</head>
 
<body>

 
 
 
     
    <form:form method="POST" modelAttribute="employee">
        <form:input type="hidden" path="userid" id="user_id"/>
        <table>
            

               
            
            
            <tr>
                <td><label for="cin">cin: </label> </td>
                <td><form:input path="cin" id="cin"/></td>
                <td><form:errors path="cin" cssClass="error"/></td>
            </tr>
            
    		<tr>
                <td><label for="email">email: </label> </td>
                <td><form:input path="email" id="email"/></td>
                <td><form:errors path="email" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="dateRecrutement">dateRecrutement: </label> </td>
                <td><form:input type="date" path="dateRecrutement" id="dateRecrutement"/></td>
                <td><form:errors path="dateRecrutement" cssClass="error"/></td>
            </tr>
     
               
            <tr>
                <td><label for="poste">poste: </label> </td>
                <td><form:input path="poste.idPoste" id="poste.idPoste"/></td>
                <td><form:errors path="poste.idPoste" cssClass="error"/></td>
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
    <br/>
    <br/>
    Go back to <a href="<c:url value='/postes' />">Liste de tous les postes</a>
</body>
</html>