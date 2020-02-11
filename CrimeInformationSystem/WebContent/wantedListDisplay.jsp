<%@page import="java.util.List"%>
<%@page import="com.crime.bean.CriminalBean"%>
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

<title>CriminalListDisplay</title>
</head>
<body background="pics/pic13.jpg">


<%

Object obj=session.getAttribute("criminal_list");

if(obj != null){
	
	List<CriminalBean> criminal_list=(List<CriminalBean>)obj;

%>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="localHomePage.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">User Home</a>
	<a href="logout.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>

  </div>
  
   <header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-large" align="center">CRIME INFORMATION SYSTEM</h1>
</header>

<h1 align="center">Most Wanted Criminal List</h1>

<table border="1" align="center">


<tr><th>Name</th><th>Date of Birth</th><th>Gender</th><th>Address</th><th>Identification Mark</th><th>Location of first arrest</th><th>Crime type</th><th>Most Wanted</th></tr>

<%
for(CriminalBean criminal_bean:criminal_list){
%>




<td><%= criminal_bean.getCriminal_name()%></td>

<td><%= criminal_bean.getCriminal_dob()%></td>

<td><%= criminal_bean.getCriminal_gender() %></td>

<td><%= criminal_bean.getCriminal_address()%></td>

<td><%= criminal_bean.getCriminal_id_mark() %></td>

<td><%= criminal_bean.getArea_of_first_arrest()%></td>

<td><%= criminal_bean.getCrime_type() %></td>

<td><%= criminal_bean.getMost_wanted() %></td>

</tr>

<%} %>




</table>

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
	<a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Login</a>

  </div>
  
  <header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-large" align="center">CRIME INFORMATION SYSTEM</h1>
</header>

<h1 align="center">Session Expires...!</h1>

<br><br>
<br><br>
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    
 </div>
 <p>Powered by Haldia Police</p>
</footer>

<%} %>



</body>
</html>