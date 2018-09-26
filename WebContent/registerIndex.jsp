<!DOCTYPE html>
<html lang="en">
 <head>
 <title>Registration Page</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet"> 
  
</head> 

<body style="background-image:url(images/back.jpg);text-align:center;background-repeat:no-repeat; background-size: 100% 100%;height:100%;width:100%;background-attachment:fixed">
 <form method="post" action="register.jsp" >
<div class ="container">
  <div class ="row">
    <div  class="col-sm-4">
              <div><img src ="images/emblem.png" ></div>
    </div>
    <div class="col-sm-4" >
      <h4 style="font-family: 'Rammetto One', cursive;font-size:60px"> Voter Registration</h4>
       <div  style="text-align:center;background-attachment:fixed;border:2px solid;padding:20px;box-shadow:10px 5px 10px red;border-radius:20px" >
          <input type="text" name="name" style="padding:10px;border:1px solid;width:250px;" placeholder="Enter Full Name" ><br><br>
          <input type="text" name="aadharNo" style="padding:10px;border:1px solid;width:250px;" placeholder="Enter Aadhar No" ><br><br>
          <input type="text" name="dob" style="padding:10px;border:1px solid;width:250px;" placeholder="Enter DOB" ><br><br>
          <input type="text" name="mobileNo" style="padding:10px;border:1px solid;width:250px;" placeholder="Enter Mobile  No" ><br><br>
          <input type="email" name="email" style="padding:10px;border:1px solid;width:250px;" placeholder="Enter Email address" ><br><br>
          <input type="submit"  style="padding:10px;border-radius:3px solid groove;width:200px;" value="Submit" ><br><br>
       </div>
    </div>
    <div class="col-sm-4">
        <img src ="images/eci.png"  style="">
    </div>
    </div>
  </div>
  </form>
</body>
</html>