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
       
          <td>statut</td><td>dateModification</td><td>type</td><td>candidat</td><td>offre</td>
        </tr>
        <c:forEach items="${candidatures}" var="p">
            <tr>
            <td>${p.statut}</td>
            <td>${p.dateModification}</td>
            <td>${p.type}</td>
            
            <td>${p.offre.idOffre}</td>
             <td><a href="<c:url value='/edit-${p.idCandidatures}-Candidatures' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idCandidatures}-Candidatures' />">delete</a></td>
        </c:forEach>
    </table>
	
	
    <br/>
    <br/>

</body>

</html>