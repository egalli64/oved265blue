<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8" %>
<%@ page import="blue.User"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type">
<title>User Registered Successfully</title>
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

}
img{
background-color: black; 
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
  
  <c:if test="${user == null}">
    <a href="/blue/signUp.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Sign Up</a>
        <a href="/blue/index.jsp" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" method="post">Sign In</a>
    
  
  </c:if>
     
  <c:if test="${user!=null}">
      <a href="/blue/Logout" class="w3-bar-item w3-button w3-right w3-blue w3-mobile" >Logout ${user.username}</a>

  </c:if>  
  </div>
<div><h1>Registration is gone fine! Welcome to eCar ${user.username}</h1>
<img class="w3-image" src="./pic/Immagine1.jpg" alt="eCar">		

</div>
<div class="w3-display-left w3-padding w3-col l6 m8">
    <div class="w3-container w3-blue">
      <h2><i class="fa fa-car w3-margin-right"></i>Sign In</h2>
    </div>
    <div class="w3-container w3-white w3-padding-16">
      <form action="/blue/LogIn" target="">
        <div class="w3-row-padding" style="margin:0 -16px;">
          <div class="w3-half w3-margin-bottom">
            <label><i class="fa fa-user"></i>Username </label>
            <input class="w3-input w3-border" type="text" placeholder="User" name="user" required>
          </div>
          <div class="w3-half">
            <label><i class="fa fa-unlock"></i>Password</label>
            <input class="w3-input w3-border" type="password" placeholder="Password" name="password" required>
          </div>
                	
        </div>
        
        <button class="w3-button w3-dark-grey" type="submit"><i class="fa fa-key w3-margin-right"></i> Log In</button>
            <!--     <button class="w3-button w3-blue" type="submit"><i class="fa fa-key w3-margin-right"></i> Sign Up</button>-->
 	
             

      </form>
    </div>
  </div>
</body>

</html>
