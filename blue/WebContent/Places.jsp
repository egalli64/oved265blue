<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Places</title>
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
    <a href="/blue/signUp.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Sign Up</a>
        <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" method="post">Sign In</a>
    
  
  </c:if>
     
  <c:if test="${user!=null}">
      <a href="/blue/Logout" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout ${user.username}</a>

  </c:if>  
  </div>

<div>

<h2>Places</h2>
    <h5>You can find our cars anywhere in the world:</h5>
  </div>
  
  <div class="w3-row-padding w3-text-white w3-large">
    <div class="w3-half w3-margin-bottom">
      <div class="w3-display-container">
        <img src="pic/MILANO.jpg" alt="Milan" style="width:100%">
        <span class="w3-display-bottomleft w3-padding">Milan</span>
      </div>
    </div>
    <div class="w3-half">
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="pic/berlino.jpg" alt="Berlin" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Berlin</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="pic/parigi.jpg" alt="Paris" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Paris</span>
          </div>
        </div>
      </div>
      <div class="w3-row-padding" style="margin:0 -16px">
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="pic/lisbona.jpg" alt="Lisbon" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Lisbon</span>
          </div>
        </div>
        <div class="w3-half w3-margin-bottom">
          <div class="w3-display-container">
            <img src="pic/madrid.jpg" alt="Madrid" style="width:100%">
            <span class="w3-display-bottomleft w3-padding">Madrid</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <hr>
  
  
  <h3>Milan</h3>
   <p>Milan is the main city in northern Italy and is located in the plains of Lombardy, the most developed of the italian regions. 
    It is the economic-financial capital of Italy. In fact Milan is the centre of many financial businesses, and its hinterland is a big and avantgarde industrial area. Milan is famous for fashion firms and is the world leader of design. </p>
    
   <h3>Berlin</h3>
   <p>A dynamic and cosmopolitan metropolis in the heart of Europe, Berlin is located in the eastern part of Germany, 70 km from the Polish border. With over 3 million inhabitants, the city presents itself to the visitor as a place of knowledge and culture. Between history, architecture, cinema, music, Berlin lives immersed in its traditions but, above all, in its future.</p>
   
   <h3>Lisbon</h3>
   <p>A thousand years of history, Manueline and Baroque architecture, ancient neighborhoods like the Alfama and the melancholy Fado, make Lisbon one of the favorite destinations for tourists from all over the world. Perched on the Tejo, the Portuguese capital, it fascinates with its squares and monuments. Not to forget the famous tascas, family-run taverns, where you can taste traditional fish dishes.</p>
   
   <h3>Paris</h3>
   <p>Always a model of style, Paris is undoubtedly one of the most fascinating and loved destinations in Europe. Paris is the largest city in France: practically one in five French people live here. To cut it in half, the Senna.But to understand Paris at a glance, you have to climb the 1792 steps of its symbol, the Eiffel Tower. From here we can see the radiocentric structure of the metropolis.</p>
   
   <h3>Madrid</h3>
   <p>Lively, fascinating and cosmopolitan, but also a classic city of art and traditions. Madrid, often called "the capital that never sleeps", is an ideal destination for lovers of culture and entertainment. But it is with the nightlife that the city shows its most secret and overwhelming side: music, dances, songs and celebrations enliven every night taverns, squares and clubs.</p>
   
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
   
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
</body>
</html>