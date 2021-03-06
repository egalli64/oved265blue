<!DOCTYPE html>
<html>
<title>eCar Blue SignUp</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
<!-- Navigation Bar -->
<div class="w3-bar w3-black w3-large">
  <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-blue w3-mobile"><i class="fa fa-car w3-margin-right"></i>eCar Blue</a>  
  <a href="/blue/cars.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Cars</a>
  <a href="/blue/admin.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Administration</a>
  <a href="/blue/Places.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Places</a>
  <a href="/blue/Howitworks.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">How it works</a>
  
  <c:if test="${user == null}">
    <a href="/blue/signUp.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Sign Up</a>
  
  </c:if>
     
  <c:if test="${user!=null}">
      <a href="/blue/Logout" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout ${user.username}</a>

  </c:if>  
    
  <header class="w3-display-container w3-content" style="max-width:2000px;">
<img class="w3-image" src="./pic/Immagine1.jpg" alt="eCar" >
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <div class="w3-container w3-blue">
      <h2><i class="fa fa-car w3-margin-right"></i>Registration</h2>
    </div>
<div class="w3-container w3-white w3-padding-16">
      <form action="/blue/SignUp" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px;">
        
        <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-user"></i> Name </label>
            <input class="w3-input w3-border" type="text" placeholder="Name" name="name" required>
          </div> 
          
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-user"></i> Last Name</label>
            <input class="w3-input w3-border" type="text" placeholder="Last Name" name="last_name" required>
          </div> 
          
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-user"></i> Username </label>
            <input class="w3-input w3-border" type="text" placeholder="User" name="username" required>
          </div> 
          
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-unlock"></i> Password</label>
            <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="password" required>
          </div>
   
    <!--  <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-unlock"></i> Password</label>
            <input class="w3-input w3-border" type="password" placeholder="Repeat Password" name=" rpassword" required>
          </div>
     -->     
       <div class= "w3-half w3-margin-bottom">
    <label><i class="fa fa-envelope" aria-hidden="true"></i> Email</label>
    <input class="w3-input w3-border" type="email"  placeholder="Enter Email" name="email" required>
</div>
          
     <!--  <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-birthday-cake" aria-hidden="true"></i> Date of Birth</label>
            <input class="w3-input w3-border" type="text" placeholder="DD-MM-YY" name="birth" required>
          </div>
       -->   
          <div class= "w3-half w3-margin-bottom">
    <label><i class="fa fa-envelope" aria-hidden="true"></i> Driving License</label>
    <input class="w3-input w3-border" type="text"  placeholder="Number" name="licence" required>
   
</div></div>


<div class="w3-container w3-blue">
      <h3><i class="fa fa-credit-card w3-margin-right"></i>Payment Details</h3>

<div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-credit-card" aria-hidden="true"></i> Credit card</label>
     <input class="w3-input w3-border" type="number" max="9999999999999999" placeholder="XXXX-XXXX-XXXX-XXXX" name="card_number" required>
          </div>

<div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-calendar-o" aria-hidden="true"></i> Expiration Date</label>
     <input class="w3-input w3-border" type="number" max="9999" placeholder="MM-YY" name="card_date" required>
          </div>
          
          <div class="w3-half w3-margin-bottom">
            <label> CV Code</label>
            <input class="w3-input w3-border" type="number" max="999" placeholder="Number" name="card_cvv" required>
          </div>
</div>

    <div class="clearfix">
        <button class="w3-button w3-dark-grey" type="submit"><i class="fa fa-key w3-margin-right"></i> Submit</button>
    </div></form></div>
  </div>
  </header>
</body>
</html>