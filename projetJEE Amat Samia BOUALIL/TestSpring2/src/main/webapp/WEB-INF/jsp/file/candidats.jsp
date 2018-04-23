<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
  
	   <table>
        <tr>
        
       
            <td>nom</td><td>prenom</td><td>cin</td><td>email</td><td>compte</td>
        </tr>
        <c:forEach items="${candidats}" var="p">
            <tr>
           
		 
            <td>${p.nom}</td>
            <td>${p.prenom}</td>
            <td>${p.cin}</td>
             <td><a href="<c:url value='/edit-${p.idPersonne}-Candidat' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idPersonne}-Candidat' />">delete</a></td>
            

          
            </tr>
        </c:forEach>
    </table>
	

</body>

</html>