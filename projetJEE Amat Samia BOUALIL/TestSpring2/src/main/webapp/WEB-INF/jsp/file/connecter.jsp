<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
 
 
 
<html >
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   
    
    
<title>
 offres demlois et stages
</title>

 

 <style>
*{ margin=0px;
   padding=0px;
}
h1{
font: bold 20px Tahoma;
text-align:center
}

nav header {
display:block;
}

body{

 /*text-align:center;*/
 width:100%;
 display: -webkit-box;
 -webkit-box-pack:center;
 
}

#s1{
/*border:1px solid black;
width:1000px;
margin:20px auto;
text-align:left;    */
max-width:1000px;
margin:10px 20px;
display: -webkit-box;
-webkit-box-orient:vertical;
-webkit-box-flex:1;

                                          
}

a{
color:#035952;
}

#hed{
/*background:yellow;
border:1px solid green;
padding :10px;*/

        width: 40px ;
	height: 7px ;
	/*display: block ;
	/*background: url(title.jpg) no-repeat ;*/
        /*background:#6DC90B;*/
	position: relative ;
	left: 350px ;
	top: 1px ;
	text-indent: -5000px ;

}


#menu {
background:blue;
color :white;

}

#menu li{
display :inline-block;
list-style:none;
padding:5px;
font:bold 14px Tahoma			
																									
}
#foot {
clear:both;
text-align :center;
padding:20px;
border-top:2px solid #f9f9f9;
}
#foot a{
color:#00b3b3;}

#maiin {
clear:both;
text-align :center;
padding:20px;
border-top:2px solid #f9f9f9;
}

#newdiv{
display: -webkit-box;
-webkit-box-orient:horisontal;
}

#description{
/*float:right;*/
width:220px;
margin: 30px 0px;
padding:30px;
background:#00b3b3;
border:1px solid #00b3b3;

}
#description a{
color:black;}

#mainsection{
border:1px solid #00b3b3;
-webkit-box-flex:1;
margin:  20px ;
padding:  20px;
}

.navbar {
 
  width:  1000px;
  background-color: #00b3b3;
  height: 11%;
  
  margin: 0px 1px;
  padding: 1px 10px 10px 15px;
  color :white;

   }


</style>
 
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>

<div id="s1">
<div class="navbar">
		
					<div class="username">
						<h4>Amat samie group</h4>
						<p>so</p>
					</div>
			
	</div>




                
           


<div id="newdiv">

<section id="mainsection">
 <h1><strong> nos offres d'emploi                 </strong></h1><br>
	<il style="background-image: url(images/bakg.jpg);">     
  			<li><a href="offreDetailGenrale.html"> Profils expérimenté(e)s en JAVA JEE   </a> 
				<section id="sec1"> 
					<h5> Profils recherchés <br>
Vous justifiez d'une expérience de 3 ans dans un poste similaire, ou dans la gestion des projets RH, idéalement dans un cabinet de conseil. Vous disposez d'un bon sens relationnel et d'un esprit d'analyse Rigoure</h5> 
				</section>
			 </li>
 <a href="offre1.html" >voir detail </a> <br><br>

			<li><a href="offre1.html"> Profils expérimenté(e)s en JAVA JEE   </a> 
				<section id="sec1"> 
					<h5> Profils recherchés <br>
Vous justifiez d'une expérience de 3 ans dans un poste similaire, ou dans la gestion des projets RH, idéalement dans un cabinet de conseil. Vous disposez d'un bon sens relationnel et d'un esprit d'analyse Rigoure</h5> 
				</section>
			 </li>

			 <li><a href="offre1.html"> Profils expérimenté(e)s en JAVA JEE   </a> 
				<section id="sec1"> 
					<h5> Profils recherchés <br>
Vous justifiez d'une expérience de 3 ans dans un poste similaire, ou dans la gestion des projets RH, idéalement dans un cabinet de conseil. Vous disposez d'un bon sens relationnel et d'un esprit d'analyse Rigoure</h5> 
				</section>
			 </li>
	</il>
</section>


 


<aside id="description">
<h3>inscription</h3>
<div id="formu">


<form:form method="POST" modelAttribute="connecter">
        <form:input type="hidden" path="idPersonne" id="idPersonne"/>
         
  
        <table>
            <tr>
                <td><label for="email">email: </label> </td>
                <td><form:input path="email" id="email"/></td>
                <td><form:errors path="email" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="pass">pass: </label> </td>
                <td><form:input path="pass" id="pass"/></td>
                <td><form:errors path="pass" cssClass="error"/></td>
            </tr>
      
            
            <tr>
                 
                
                 
                
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>

 
	 
	       <button   onclick="window.location.href='/connecter-${email}-${pass}'">   <span> Se connecter</span>  </button> <br>
 
<a href="passwordOublie.html" >Mot de passe oublié </a>

 
<button  onclick="window.location.href='inscrire.html'"> <span>  Créer mon espace candidat</span>  </button> <br><br>
 <!--<a href="candidatureSpontane.html" >deposer une candidature spontané </a> <br><br>
 <a href="candidatureStage.html" >deposer une candidature pour un stage </a> <br><br>-->

</div>
</aside>
</div>



<footer id="foot">
  <a href="https://www.linkedin.com/in/amat-samiâ-boualil "> by amat samia boualil</a>
</footer>


</div>
 
     
    
    Go back to <a href="<c:url value='/candidats' />">Liste de tous les candidats</a>
</body>
</html>
 
 <html>

<head>


</head>

<body >



</body>
</html>
 
     
     
           