<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cars</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>

</head>
<body>
<!-- Navigation Bar -->
<div class="w3-bar w3-black w3-large">
  <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-blue w3-mobile"><i class="fa fa-car w3-margin-right"></i>eCar Blue</a>  
  <a href="/blue/cars.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Cars</a>
  <a href="/blue/admin.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Administration</a>
  <a href="/blue/Places.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Places</a>
  <a href="/blue/Howitworks.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">How it works</a>
  
  <c:if test="${user == null}">
    <a href="/blue/signUp.html" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Sign Up</a>
        <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" method="post">Sign In</a>
    
  
  </c:if>
     
  <c:if test="${user!=null}">
      <a href="/blue/Logout" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout ${user.username}</a>

  </c:if>  
  </div>

<div>
     <h2>Cars</h2>
    <h5>You can choose our car models:</h5>
  </div>
  

  <div class="w3-row-padding w3-padding-16 w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
      <span class="w3-display-bottomleft w3-padding">Tesla</span>
        <img src="pic/tesla.jpg" alt="Tesla" style="width:100%">
        
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
           <span class="w3-display-bottomleft w3-padding">BMW</span>
            <img src="pic/bmw%20elettrica.jpg" alt="BMW" style="width:100%">
           
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <span class="w3-display-bottomleft w3-padding">Dr</span>
            <img src="pic/dr.jpg" alt="Dr" style="width:100%">
          
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
           <span class="w3-display-bottomleft w3-padding">Toyota</span>
            <img src="pic/toyota.jpg" alt="Toyota" style="width:100%">
           
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
          <span class="w3-display-bottomleft w3-padding">Smart</span>
            <img src="pic/smart_elettrica_ed_5.jpg" alt="Smart" style="width:100%">
            
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  <hr>
  
  
  
  <div class="w3-container" id="Price" style="margin-top:75px">
    <h2>Price</h2>
  </div>

  <div class="w3-row-padding">
    <div class="w3-half w3-margin-bottom">
      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-dark-grey w3-xlarge w3-padding-32">Model</li>
        <li class="w3-padding-16">Tesla</li>
        <li class="w3-padding-16">BMW</li>
        <li class="w3-padding-16">Toyota</li>
        <li class="w3-padding-16">Dr</li>
        <li class="w3-padding-16">Smart</li>
        <li class="w3-padding-16">
      </ul>
    </div>
        
    <div class="w3-half">
      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-blue w3-xlarge w3-padding-32">Price</li>
        <li class="w3-padding-16">$ 300</li>
        <li class="w3-padding-16">$ 200</li>
        <li class="w3-padding-16">$ 150</li>
        <li class="w3-padding-16">$ 100</li>
        <li class="w3-padding-16">$ 50</li>
        <li class="w3-padding-16">
      </ul>
    </div>
  </div>  
  
  
 <hr>
 
  <h2>Contact</h2>
    <p>If you have any questions, do not hesitate to ask them.</p>
 <div class="w3-row-padding">
    <div class="w3-half w3-margin-bottom">
      <ul class="w3-ul w3-grey w3-center">       
        <i class="fa fa-map-marker w3-text-blue" style="width:30px"></i> MILANO, IT<br>
        <i class="fa fa-phone w3-text-blue" style="width:30px"></i> Phone: 123456789<br>
        <i class="fa fa-envelope w3-text-blue" style="width:30px"> </i> Email: alfopappa@mail.com<br>       
      </ul>
       <form action="" target="_blank">
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p><button class="w3-button w3-black w3-padding-large" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>
   <div class="w3-container w3-padding-64 w3-center" id="team">
   
   
   
   <hr>
   
   
   
<h2>OUR TEAM</h2>
<p>Meet the team :</p>
  
  <div class="w3-row-padding w3-grayscale">
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        <img src="pic/foto%20michele.jpg" alt="Michele" style="width:50%">
        <div class="w3-container">
          <h3>Michele Pulizzi</h3>
          <p class="w3-opacity">Mechanical Engineering</p>
          <p>Collaborator</p>
          <p>Marsala (TP)</p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        <img src="pic/foto%20giacomo.jpg" alt="Giacomo" style="width:50%">
        <div class="w3-container">
          <h3>Giacomo Gaglione</h3>
          <p class="w3-opacity">Management of Built Environment</p>
          <p>Boss</p>
          <p>Varese (VA)</p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        <img src="pic/foto%20alfonso.jpg" alt="Alfonso" style="width:50%">
        <div class="w3-container">
          <h3>Alfonso Pappalardo</h3>
          <p class="w3-opacity">Management Engineering</p>
          <p>Collaborator</p>
          <p>Altamura (BA)</p>
        </div>
      </div>
    </div>
  </div>
  

