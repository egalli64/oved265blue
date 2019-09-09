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
</style>
</head>

<body>
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <a href="/blue/index.html" class="w3-bar-item w3-button w3-blue w3-mobile"><i class="fa fa-car w3-margin-right"></i>eCar Blue</a>  
  <a href="/blue/cars.html" class="w3-bar-item w3-button w3-grey w3-mobile">Cars</a>
  <a href="/blue/admin.html" class="w3-bar-item w3-button w3-grey w3-mobile">Administration</a>
  <a href="/blue/Places.html" class="w3-bar-item w3-button w3-grey w3-mobile">Places</a>
  <a href="/blue/Howitworks.html" class="w3-bar-item w3-button w3-grey w3-mobile">How it works</a>
  <!-- <a href="#contact" class="w3-bar-item w3-button w3-mobile">Contact</a> -->
  <div class="w3-bar-item w3-button w3-right w3-blue w3-mobile">
   <form action="/blue/Logout"  method="get">
   <input type="submit"  value= "Logout">
   </form>
   </div>
   
</div>

<div>
<h1>Welcome ${user.username}</h1>
</div>
<!-- <div>
 <form action="/blue/Logout" method="get">
      <input type="submit" value="Logout">
   </form></div>-->

</body>

</html>
