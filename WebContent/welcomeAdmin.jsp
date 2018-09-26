<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	{
		response.sendRedirect("index.jsp");
	}
	else
	{
%>
<!DOCTYPE html>
<html lang="en">
 <head>
 <title>Welcome Admin</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Rammetto+One" rel="stylesheet"> 
  
</head> 

<body style="background-image:url(images/back.jpg);text-align:center;background-repeat:no-repeat; background-size: 100% 100%;height:100%;width:100%;background-attachment:fixed">
 <form>
<div class ="container">
  <div class ="row">
    <div  class="col-sm-4">
              <div><img src ="images/emblem.png" ></div>
    </div>
    <div class="col-sm-4" >
      <h4 style="font-family: 'Rammetto One', cursive;font-size:60px"> Welcome Admin</h4>
       <div  style="text-align:center;background-attachment:fixed;border:2px solid;padding:20px;box-shadow:10px 5px 10px red;border-radius:20px" >
          <input type="submit" formmethod="get" formaction="addCandidateIndex.jsp" style="padding:10px;border-radius:3px solid groove;width:200px;" value="Add Candidate" ><br><br>
       
          <input type="submit" formaction="viewCandidates.jsp" formmethod="get" style="padding:10px;border-radius:3px solid groove;width:200px;" value="View Candidates" ><br><br>

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
<%
	} 
%>