<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
</head>
<body>

	   <table>
        <tr>
        
        
            <td>type</td><td>modele</td> 
        </tr>
        <c:forEach items="${modeles}" var="p">
            <tr>
            <td>${p.type}</td>
            <td>${p.modelee}</td>
             <td><a href="<c:url value='/edit-${p.idModele}-Modele' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idModele}-Modele' />">delete</a></td>
         
            </tr>
        </c:forEach>
    </table>
	

</body>

</html>