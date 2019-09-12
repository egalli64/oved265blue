<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8" %>
<%@ page import="blue.User"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type">
<title>User Logged Successfully</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
body{ background-image: url("./pic/Immagine1.jpg");    /* Center the image */
  background-size: cover; /* Resize the background image to cover the entire container */
}
h1, h2{
text-align: center;
margin: 0px;
text-shadow: 6px 4px white;
}
h3{
text-align: center;
color: cyan;
margin: 0px;
}
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
      <a href="/blue/LogoutAdmin" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout ${user.username}</a>
  </c:if>  
  
 
</div>

<div>
<h1>Welcome ${user.username}</h1>	
<h2>My Profile</h2>
<h3>  <i class="fa fa-user"></i>Username: ${user.username}</h3>
<h3>  <i class="fa fa-unlock"></i>Password: ${user.password}</h3>
<h3>  User_Id: ${user.user_id}</h3>
<h3>  <i class="fa fa-user"></i>Name: ${user.name} </h3>
<h3>  <i class="fa fa-user"></i>Last Name: ${user.last_name}</h3>
<h3>  <i class="fa fa-envelope" aria-hidden="true"></i>Email: ${user.email}</h3>
<h3>  <i class="fa fa-credit-card" aria-hidden="true"></i>Credit Card number: ${user.card_number}</h3>
<h3>  <i class="fa fa-calendar-o" aria-hidden="true"></i>Credit Card Expiration Date: ${user.card_date}</h3>
<h3>  Credit Card CVV: ${user.card_cvv}</h3>
<h3>  <i class="fa fa-envelope" aria-hidden="true"></i>Licence: ${user.licence}</h3>


</div>

<!-- <div>
 <form action="/blue/Logout" method="get">
      <input type="submit" value="Logout">
   </form></div>-->

</body>

</html>
