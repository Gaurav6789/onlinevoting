<!DOCTYPE html>
<html lang="en">
 <head>
 <title>Home Page</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet"> 
<script>
function validate(){
var num=document.myform.aadharNo.value;
if (isNaN(num)){
  document.getElementById("numloc").innerHTML="Enter Numeric value only";
  return false;
}else{
  return true;
  }
}
</script>
</head> 

<body style="background-image:url(images/back.jpg);text-align:center;background-repeat:no-repeat; background-size: 100% 100%;height:560px;width:100%;background-attachment:fixed ">
<div class="header">
<form name="myform" action="voterLogin.jsp" method="post" onsubmit="return validate()">
  <h1 style="font-family: 'Rammetto One', cursive;">E-voting Portal	</h1>
</div>

<div class="container" >
<ul>
  <li><a href="">Home</a></li>
  <li><a href="http://eci.nic.in">Contact</a></li>
  <li><a href="adminIndex.jsp">Admin</a></li>
</ul>
<div class ="container">
	<div class ="row">
		<div  class="col-sm-4">
				<div><img src ="images/emblem.png" ></div>
		</div>
		<div class="col-sm-4" >
			<h4 style="font-family: 'Rammetto One', cursive;font-size:80px"> login Voter</h4>
			 <div  style="text-align:center;background-attachment:fixed;border:2px solid;padding:20px;box-shadow:10px 5px 10px red;border-radius:20px" >
					<input type="text" name="aadharNo" style="padding:10px;border:1px solid;width:250px;" placeholder="Enter registered Aadhar No" required><span id="numloc"></span><br><br>
					<input type="submit"  style="padding:10px;border-radius:3px solid groove;width:200px;" value="Login" ></a><br><br>
					<p style="color:white">if you are a new voter</p>
					<a href ="registerIndex.jsp" style="color:white">Register yourself here</a>
		</div>
	</div>
		<div class="col-sm-4">
			<img src ="images/eci.png">
		</div>
		
	</div>
</div>

</div>
</form>
</body>
</html>