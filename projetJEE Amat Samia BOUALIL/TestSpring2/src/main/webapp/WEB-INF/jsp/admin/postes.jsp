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
            <td>titre</td><td>type</td>
        </tr>
        <c:forEach items="${postes}" var="p">
            <tr>
            <td>${p.titre}</td>
            <td>${p.type}</td>
             <td><a href="<c:url value='/edit-${p.idPoste}-Poste' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idPoste}-Poste' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
	

</body>

</html>