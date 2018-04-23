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
	
	 <td>nom</td><td>prenom</td><td>cin</td><td>email</td><td>compte</td><td>dateRecrutement</td><td>poste</td>
        </tr>
        <c:forEach items="${employees}" var="p">
            <tr>
            <td>${p.nom}</td>
            <td>${p.prenom}</td>
            <td>${p.cin}</td>
            <td>${p.email}</td>
            <td>${p.dateRecrutement}</td>
            <td>${p.poste.idPoste}</td>
             <td><a href="<c:url value='/edit-${p.idPersonne}-Employee' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idPersonne}-Employee' />">delete</a></td>
             
            </tr>
        </c:forEach>
    </table>
	

</body>

</html>