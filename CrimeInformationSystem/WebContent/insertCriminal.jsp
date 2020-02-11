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
    padding: 15px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: tomato;
}
</style>

<title>Criminal Data Input</title>
</head>
<body background="pics/pic10.jpg">


<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="policeHome.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Police Home</a>
    <a href="logout.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>

  </div>
  
   <header class="w3-container w3-red w3-center" style="padding:40px 16px">
  <h1 class="w3-margin w3-large" align="center">CRIME INFORMATION SYSTEM</h1>
</header>

<h1 align="center"> Criminal Data Entry </h1>

<div style="text-align:center">

<form action="InsertCriminalSrv">

Name:<input type="text" name="criminal_name" placeholder="Criminal Name" required><br><br>

DOB:<input type="date" name="criminal_dob" placeholder="DOB" required><br><br>

Gender: <select name="criminal_gender" required>

<option selected>Male</option>
<option>Female</option>
<option>Others</option>

</select><br><br>

Place Of First Arrest<input type="text" name="area_of_first_arrest" placeholder="Place of first Arrest" required><br><br>

Crime Type: <select name="crime_type" required>

<option selected>Homicide</option>
<option>Assault</option>
<option>Robbery</option>
<option>Murder</option>

</select><br><br>

Most Wanted: <select name="most_wanted" required>

<option selected>No</option>
<option>Yes</option>


</select><br><br>

<br><textarea rows="2" cols="50" name="criminal_id_mark" placeholder=" criminal identification mark" required></textarea><br><br>


<br><textarea rows="4" cols="50" name="criminal_address" placeholder=" criminal address" required></textarea><br><br>

<input type="submit" value="Submit">
<input type="reset" value="Reset">

</form>
</div>

<br><br>
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    
 </div>
 <p>Powered by Haldia Police</p>
</footer>


</body>
</html>