<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8" %>
<%@ page import="blue.User"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type">
<title>Admin Logged Successfully</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
h1 {
text-align: center;
color: white;
background-color: black; 
margin: 0px;
opacity: 0.5;

}
img{
background-color: black; 
  opacity: 0.5;
  filter: alpha(opacity=50); 
}
</style>

</head>

<body>
<!-- Navigation Bar -->
<div class="w3-bar w3-cyan w3-large">
  <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-cyan w3-mobile"><i class="fa fa-car w3-margin-right"></i>eCar Blue</a>  
  <a href="/blue/cars.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Cars</a>
  <a href="/blue/admin.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Administration</a>
  <a href="/blue/Places.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">Places</a>
  <a href="/blue/Howitworks.jsp" class="w3-bar-item w3-button w3-grey w3-mobile">How it works</a>
  
  <c:if test="${administrator == null}">
    <a href="/blue/signUp.jsp" class="w3-bar-item w3-button w3-right w3-cyan w3-mobile">Sign Up</a>
        <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-right w3-cyan w3-mobile">Sign In</a>
    
  
  </c:if>
     
  <c:if test="${administrator!=null}">
      <a href="/blue/Logout" class="w3-bar-item w3-button w3-right w3-cyan w3-mobile" >Logout ${administrator.username}</a>

  </c:if>  
  </div>

<div>
<h1 >Hi ${administrator.username}, you are Admin of this site!</h1>
<header class="w3-display-container w3-content" style="max-width:2000px;">
<img class="w3-image" src="./pic/Immagine1.jpg" alt="eCar" >
  <div class="w3-display-left w3-padding w3-col l6 m8">
    <div class="w3-container w3-cyan">
      <h2><i class="fa fa-car w3-margin-right"></i>Register a new Admin</h2>
    </div>
<div class="w3-container w3-white w3-padding-16">
      <form action="/blue/RegisterAdmin" target="_blank">
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
          
                 <div class= "w3-half w3-margin-bottom">
    <label><i class="fa fa-envelope" aria-hidden="true"></i> Email</label>
    <input class="w3-input w3-border" type="email"  placeholder="Enter Email" name="email" required>
</div>
          
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-unlock"></i> Password</label>
            <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="password" required>
          </div>
       <div class="clearfix">
        <button class="w3-button w3-dark-grey" type="submit"><i class="fa fa-key w3-margin-right"></i> Register new Admin</button>
    </div></div></form>
  </div>
 
</div>


  </header></div>


</body>

</html>
