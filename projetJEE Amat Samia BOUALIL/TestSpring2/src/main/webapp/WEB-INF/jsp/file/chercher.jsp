 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<title>
candidature recu
</title>



 <style>

/*body {
  background: #f9f9f9;
  height: 100%;
  width: 100%;
  overflow-x: hidden;
  font-size: 1.1em;
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  color: #333; }

#sidebar {
  position: fixed;
  z-index: 0;
  width: 12% !important;
  background: #fff;
  padding: 10px 30px !important;
  box-shadow: 3px 0px 8px rgba(0, 0, 0, 0.05);
  margin-top: 35px;
  height: 100%; }

 #sidebar h1, #sidebar h2, #sidebar h3, #sidebar h4, #sidebar h5, #sidebar h6 {
    color: #333;
    margin-top: 20px;
    margin-bottom: 0; }

  #sidebar ul {
    margin-top: 10px;
    margin-left: -60px;
    margin-right: -30px; }

    #sidebar ul li {
      list-style: none;
      margin: 0;
      padding: 0; }

      #sidebar ul li a {
        display: block;
        padding: 10px 20px;
        color: #888; }

        #sidebar ul li a .fa {
          margin-right: 5px; }

      #sidebar ul li a:hover {
        color: #35cebe;
        background-color: #f9f9f9; }

#main-content{
//text-align:right;
width:80%;
//border:1px solid  #00b3b3;
margin:60px 260px;

}

#foot {
clear:both;
text-align :center;
padding:20px;
border-top:2px solid #00b3b3;
}
#butt{
 margin: -30px 600px;
 height: 6%;
 width:9%;
 background-color: #00b3b3;
 border:#00b3b3;
 color:white;
 font-size: 0.9em;}

body {
	 font-family: Arial, Verdana, sans-serif;
	 color: #111111;}
table {
	 width: 600px;}
#th, #r.td {
	 padding: 7px 10px 10px 10px;}
#r.th {
	 text-transform: uppercase;
	 letter-spacing: 0.1em;
	 font-size: 80%;
	 border-bottom: 2px solid #111111;
	 border-top: 1px solid #999;
	 text-align: left;}
#r.tr.even {
	 background-color: #efefef;}
#r.tr:hover {
	 background-color: #c3e6e5;}
.money {
	 text-align: right;}

.navbar {
 
  position: fixed;
  min-width:  4px;
  background-color: #00b3b3;
  height: 12%;
  width:100%;
  
  margin: -60px -29px;
  padding: 1px 15px 10px 15px;
  color :white;
   }

   

.username{
text-align:right;
}*/
</style>
</head>
<body>
<div class="navbar">
		
					<div class="username">
						<h4>Amat samia BOUALIL</h4>
						<p>Responsable RH</p>
					</div>
			
	</div>

<div id="main">
		<div id="sidebar" class="column">
			<h5>Navigation</h5>
			<ul>
				<li><a href="index.html"><em class="fa fa-bar-chart"></em> home </a></li>
				<li><a href="profil.html"><em class="fa fa-bar-chart"></em> mon profil </a></li>
				<li><a href="candidatures.html"><em class="fa fa-bar-chart"></em> les candidatures </a></li>
				<li><a href="offresRH.html"><em class="fa fa fa-clone"></em> gestion des offres</a></li>
				<li><a href="gestionModeles.html"><em class="fa fa-pencil-square-o"></em> gestion des modeles </a></li>
				
			</ul>
		</div>
		<section id="main-content">
			
						<h1>bonjour </h1>

								
		

<h1>les candidature recu</h1>

   		  <form:form method="POST" modelAttribute="chercher">
  
   <table>
      
       
		<tr>
           <td><label for="m">type: </label> </td>
           <td><form:input path="m" id="m"/></td>
           <td><form:errors path="m" cssClass="error"/></td>
       </tr>
       
       <tr>
           <td><label for="nbr">offre: </label> </td>
           <td><form:input path="nbr" id="nbr"/></td>
           <td><form:errors path="nbr" cssClass="error"/></td>
       </tr>
       
      
            <tr> 
            <td></td>
            
            <td></td>
            <td> <input type="submit" value="chercher"/> </td>
            </tr>
     
        
     
   </table>
</form:form>			


<table id="r">
        <tr>
       
          <td>selectionner</td><td>statut</td><td>dateModification</td><td>type</td><td>candidat</td><td>offre</td>
        </tr>
        <c:forEach items="${candidatures}" var="p">
            <tr>
             <td> <input id="checkBox" type="checkbox"> </td>
            <td>${p.statut}</td>
            <td>${p.dateModification}</td>
            <td>${p.type}</td>
            <td>${p.candidat.idPersonne}</td>
            <td>${p.offre.idOffre}</td>
             <td><a href="<c:url value='/edit-${p.idCandidatures}-Candidatures' />">edit</a></td>
            <td><a href="<c:url value='/delete-${p.idCandidatures}-Candidatures' />">delete</a></td>
            <td></td>
            <td></td>
        </c:forEach>
    </table>
    
    
    
<label for="action"><b>selectionnez une action</b></label>
	<select>
 	 <option value="0">refus</option>
	 <option value="1">recrute</option>
 	 <option value="2">transmission en interne</option>
	 <option value="3">demmande dinformation</option>
 
 	 
 	
	</select><br>  <br>
			
	</section>		
			
					

<footer id="foot">
  <a href="https://www.linkedin.com/in/amat-samiâ-boualil "> by amat samia boualil</a>
</footer>
</div>

</body>
</html>
