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
/* .fa-anchor,.fa-coffee {font-size:200px} */
</style>

<title>CIS-Home</title>
</head>
<body>


<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="localRegister.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Register</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Login</a>
    <a href="author.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About Authors</a>

  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="localRegister.jsp" class="w3-bar-item w3-button w3-padding-large">Register</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large">Login</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Most Wanted List</a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">CRIME INFORMATION SYSTEM</h1>
  <p class="w3-xlarge">Iniciative by Haldia Police Department</p>
  <!--<button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get Started</button>-->
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <!-- <div class="w3-twothird"> -->
      <h1>Crime</h1>
      <h5 class="w3-padding-32">Definition of crime by prominent jurists</h5>

      <p class="w3-text-grey">
1. In his 'Commentaries on Law of England', Sir William Blackstone defined Crime as "an act committed or omitted in violation of Public Law forbidding or commanding it". <br>
-by Sir William Blackstone<br><br>
2. "Crime is an act forbidden by law and revolting to the moral sentiments of the society". <br>
-by Sir James Stephen<br><br>
3. "Crimes are wrongs whose sanction is punitive and in no way remissible by an private person, but is remissble by the Crown alone, if remissible at all"<br>
-by Kenny<br><br>
4. "Crime is an act which is forbidden by law and revolting to the moral sentiments of the society". <br>
-by Stephen<br><br>
5. "An intentional act or omission in violation of criminal law, committed, without defense or justification and sanctioned by law as felony or misdemeanor." <br>
-by Paul W. Tappen<br><br>
6. A crime ipso facto implies a disturbance in a social relationship and a social definition as to what such disturbance is. <br>
-by Elliot and Merill<br><br>
7. The term crime technically means a form of anti-social behavior that has violated public sentiment to such an extent as to be forbidden by statute.
-by  Barners and Teeters<br><br>  
 </p>
   <!--  </div> -->

   <!--  <div class="w3-third w3-center">
      <i class="fa fa-anchor w3-padding-64 w3-text-red"></i>
    </div>  -->
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <!-- <div class="w3-third w3-center">
      <i class="fa fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>
    </div> -->

    <!-- <div class="w3-twothird"> -->
      <h1>Your Role in Preventing Crime</h1>
      <!-- <h5 class="w3-padding-32">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h5> -->

      <p class="w3-text-grey">
      1. Know about crime , criminal rules and make others aware too.<br>
      2. Report and provide information about crimes and suspicious activities.<br>
      3. Co-operate with police personnels.<br>
      4. Raise your concerns with your local geographically-based community policing team.<br>
      5. Your approach should be promoting the implementation of effective crime prevention practices.<br>
      
      
      
      </p>
   <!--  </div> -->
  </div>
</div>

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="w3-margin w3-xlarge">Come forward, Register complaint & Save someone from getting hurt</h1>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    
 </div>
 <p>Powered by Haldia Police</p>
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>


</body>
</html>