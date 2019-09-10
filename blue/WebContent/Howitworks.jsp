<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>How it works</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif;
margin-left:10px;}
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
  
  <c:if test="${user == null && administrator == null}">
    <a href="/blue/signUp.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Sign Up</a>
  
  </c:if>
     
  <c:if test="${user != null}">
      <a href="/blue/Logout" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout ${user.username}</a>
  </c:if>  
  
    <c:if test="${administrator != null}">
      <a href="/blue/LogoutAdmin" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout admin ${user.username}</a>
  </c:if>  
 
</div>
<div>
     <h2>How it works</h2>
     <h5>instructions</h5>
   
  
  </div>
  

  <div class="w3-row-padding w3-padding-16 w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
      <span class="w3-display-bottomleft w3-padding"></span>
        <img src="pic/ricaricauto.jpg" alt="" style="width:100%">
        
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
           <span class="w3-display-bottomleft w3-padding"></span>
            <img src="pic/ecar.jpg" alt="" style="width:100%">
           
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <span class="w3-display-bottomleft w3-padding"></span>
            <img src="pic/app.jpg" alt="" style="width:100%">
          
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
           <span class="w3-display-bottomleft w3-padding"></span>
            <img src="pic/5-App-Per-lelettrico.png" alt="" style="width:100%">
           
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
          <span class="w3-display-bottomleft w3-padding"></span>
            <img src="pic/ricarica3-1080x630.jpg" alt="" style="width:100%">
            
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  
          <h5><b>Sign up for the service</b></h5>
          <p>You need to register by entering your personal details and payment details</p>
          <hr>
          <h5><b>Book the car</b></h5>
          <p>Book a car among those available. You can do it: download the eCar app, by calling 1234567, registering on the eCar.com website.</p>
          <hr>
          <h5><b>Remove the plug</b></h5>
          <p>Use the App to open the car or forward the received SMS to the number 1234567: the car will open within 30 seconds. In the glove compartment you will find: the key,
the card for charging the vehicle.</p>
		  <hr>
		  <h5><b>Travelling</b></h5>
          <p>ECar cars are automatic. To turn on the car, insert the key and press the brake pedal to position P.Warning: you must press the brake pedal to switch on and to change the driving settings.</p>
          <hr>
          <h5><b>Return the car</b></h5>
          <p>At the destination car park you will have to put the car back in charge: in each car the mode to open the charging door is indicated.
Take the cable from the trunk and insert the plug into the car's charging socket. Put the keys and the refill card in the glove compartment.</p>
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
   

          
          