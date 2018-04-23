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
                    
 
    <form:form method="POST" modelAttribute="document" enctype="multipart/form-data"> 
    
        <form:input type="hidden" path="idDocument" id="idDocument"/>
        <table>
            <tr>
                <td><label for="nomDoc">nomDoc: </label> </td>
                <td><form:input path="nomDoc" id="nomDoc"/></td>
                <td><form:errors path="nomDoc" cssClass="error"/></td>
            </tr>
         	    
     	<tr>
             <td>
                <label for="img2">img2</label> </td> 
               
                        <c:if test="${edit}">
                            <td><img src="/upload-dir/${document.img2}" width="100" height="100"></td>
                        </c:if>
                      
      
               
                   <td><input type="file" name="file2" id="file2"></input></td>
                
                <td><form:errors path="img2" class="error" /></td>
                	
 				
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
    Go back to <a href="<c:url value='/documents' />">Liste de tous les documents</a>
</body>
</html>