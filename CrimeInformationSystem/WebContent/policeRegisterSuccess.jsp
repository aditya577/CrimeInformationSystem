<%@page import="com.crime.bean.PoliceBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/1.css">
<link rel="stylesheet" href="CSS/2.css">
<link rel="stylesheet" href="CSS/3.css">
<link rel="stylesheet" href="CSS/4.css">

 <style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}

a:link, a:visited {
    background-color: #f44336;
    color: white;
    padding: 40px 40px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: tomato;
}
</style>

<title>PoliceRegistrationSuccess</title>
</head>
<body background="pics/pic10.jpg">


<%

Object obj=session.getAttribute("police_bean");

if(obj != null){

	PoliceBean police_bean=(PoliceBean)obj;
%>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="adminHome.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Admin Home</a>
    <a href="logout.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>

  </div>
  
   <header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-large" align="center">CRIME INFORMATION SYSTEM</h1>
</header>


<h1 align="center">Police Officer, <%= police_bean.getPolice_name() %> is registered successfully with following details</h1>

<p><b>Unique Id:</b> <%= police_bean.getPolice_id() %></p>

<p><b>Name:</b> <%= police_bean.getPolice_name() %></p>

<p><b>Username:</b> <%= police_bean.getPolice_username() %></p>

<p><b>Initial Password:</b> <%= police_bean.getPolice_password() %></p>

<p><b>Mobile:</b> <%= police_bean.getPolice_mobile() %></p>

<p><b>Police Station Assigned:</b> <%= police_bean.getPolice_station() %></p>

<p><b>Assigned Case Id:</b> <%= police_bean.getComplaint_id() %></p>




<br><br>
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    
 </div>
 <p>Powered by Haldia Police</p>
</footer>


<%}else{ %>

<%session.invalidate(); %>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    
    <a href="index.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Home</a>

  </div>
  
   <header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-large" align="center">CRIME INFORMATION SYSTEM</h1>
</header>


<h1 align="center">Session Expired...!</h1>

<br><br><br><br>
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    
 </div>
 <p>Powered by Haldia Police</p>
</footer>


<%} %>


</body>
</html>