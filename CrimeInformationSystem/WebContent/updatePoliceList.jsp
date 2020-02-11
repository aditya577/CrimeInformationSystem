<%@page import="java.util.List"%>
<%@page import="com.crime.bean.ComplaintBean"%>
<%@page import="java.util.ArrayList"%>
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

<title>UpdatePolice</title>
</head>
<body background="pics/pic13.jpg">


<%

Object obj1=session.getAttribute("complaint_list");

Object obj2=session.getAttribute("police_bean");

if(obj2 !=null){

	
	
	
	
	PoliceBean police_bean=(PoliceBean)obj2;
	
	
	String ps1=null, ps2=null, ps3=null;
	ps1=police_bean.getPolice_station();
	
	if(ps1.equalsIgnoreCase("Ranichak PS")){
		
		ps2="Khudiramnagar PS";
		ps3="Durgachak PS";
		
	}
	
	if(ps1.equalsIgnoreCase("Khudiramnagar PS")){
		
		ps2="Ranichak PS";
		ps3="Durgachak PS";
		
	}

	if(ps1.equalsIgnoreCase("Durgachak PS")){
	
		ps2="Khudiramnagar PS";
		ps3="Ranichak PS";
	
	}
		
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

<h1>Update Police Info and Assign active case</h1><br>

<div style="text-align:center">

<form action="UpdatePoliceSrv" method="get">

Unique Id:<%= police_bean.getPolice_id()%><br>

Name:<%= police_bean.getPolice_name()%><br>

Username:<%= police_bean.getPolice_username()%><br>

Mobile:<input type="number" name="police_mobile" value="<%= police_bean.getPolice_mobile()%>"><br>



Police Station:<select name="police_station">

<option value="<%=ps1%>" selected><%= ps1 %></option>
<option value="<%= ps2%>"><%= ps2 %></option>
<option value=""<%= ps3%> %><%= ps3 %></option>


</select><br>

<%if(obj1 != null){ %>

<%
List<ComplaintBean> complaint_list=(List<ComplaintBean>)obj1;
%>

Assign a Open Case:<select name="complaint_id">

<%for(ComplaintBean complaint_bean:complaint_list) {%>

<option><%= complaint_bean.getComplaint_id() %></option>



<%}} %>
</select><br>

<input type="submit" value="Update">

</form>

</div>

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