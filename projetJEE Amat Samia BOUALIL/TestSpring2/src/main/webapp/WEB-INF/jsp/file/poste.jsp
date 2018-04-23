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
 
     
    <form:form method="POST" modelAttribute="poste">
        <form:input type="hidden" path="idPoste" id="idPoste"/>
        <table>
            <tr>
                <td><label for=" titre"> titre: </label> </td>
                <td><form:input path="titre" id="titre"/></td>
                <td><form:errors path="titre" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for=" type"> type: </label> </td>
                <td><form:input path="type" id="type"/></td>
                <td><form:errors path="type" cssClass="error"/></td>
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
    Go back to <a href="<c:url value='/produits' />">Liste de tous les produits</a>
</body>
</html>