<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Company Page</title>
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
   
  .jumbotron {
      background-color: #4eb5b4;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
    
   
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

 
<!-- Container (About Section) -->

<br><br><br>
<div id="detail" class="container-fluid bg-grey">
  <div class="row">
     
    <div class="col-sm-8">
      
   <div class="row">
       <h2> Detail de l'offre:  ${offreD.titre} </h2>
  
    
    
  </div>
<div class="row">
       
  
    <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Type de l'offre</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.typeOffre}</div>
    <br>
    
  </div>
  
   <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Fonction</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.fonction}</div>
    
    
  </div>
  
   <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Ville</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.ville}</div>
 
  </div>
  <br>

 <div class="row">
       
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Formation</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.formation}</div>
    
    
  </div>
  
<div class="row">
       
  
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Experience</strong></div>
    <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.experience}</div>
    
    
  </div>





<div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Description</strong> </div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.description}</div>
    
    
  </div>
  

 
  <br>
  
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Date de publication</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.datPub}</div>
    
    
  </div>
  <div class="row">
       
    
        <div class="col-sm-4" style="background-color:F4F7F7;"><strong>Date de expiration</strong></div>
        <div class="col-sm-8" style="background-color:F4F7F7;">${offreD.dateExpir}</div>
    
        <a href="#login" class="btn btn-info" role="button">Postuler</a>
  </div>
  
 
  <br>
  <br><br><br>
  
  
  



 


  
 
</div>
 
 
    </div>
  </div>


 

 <br>
  
  
   
 

 
      

 

 
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

 <footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>web site Made By <a href="https://ma.linkedin.com/in/amat-sami%C3%A2-boualil-83a069115" title="Visit w3schools">Amat samie BOUALIL</a></p>
</footer>
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>
