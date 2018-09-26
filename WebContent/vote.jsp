<!DOCTYPE html>
<html lang="en">
<head>
  <title>Voting Panel</title>
  <link rel="stylesheet" type="text/css" href="mystyle.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
    text-align: center;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
</head>
<body style="background-image:url(back.jpg);text-align:center;background-repeat:no-repeat; background-size: 100% 100%;height:560px;width:100%;background-attachment:fixed ">
<div class="header">
  <h1 style="font-family: 'Rammetto One', cursive;">Vote on your favorite candidate here</h1>
</div>
</body>
</html>

<%@page import="model.*,java.util.*"%>
<jsp:useBean id="rc" class="model.RegisterCandidate" ></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>

<%
	List<RegisterCandidate> rcObj=dao.viewCandidates(rc);
	Iterator<RegisterCandidate> it=rcObj.iterator();
%>

<html><body><form method="post">
<table id="t01">
<hr color="red"></hr>
<tr >
<th>Id</th><th>Candid Name</th><th>Party Name</th><th>Vote</th>
</tr> 
<%
			long no=Long.parseLong(request.getParameter("aadharNo"));
			while(it.hasNext())
			{
				rc=it.next();
				out.println("<tr align='center'>");
				out.println("<td>"+rc.getId()+"</td>");
				out.println("<td>"+rc.getcName()+"</td>");
				out.println("<td>"+rc.getpName()+"</td>");
				out.println("<td><img src='images/" +rc.getpName()+ ".jpg' style='padding:5px; width:160px; height:130px' class='img-circle '><br><input type='submit' value='Vote' formaction='submitVote.jsp?pName="+rc.getpName()+" '></td>");
				out.println("</tr>");
			}
 %>
 <input type="hidden" name="aadharNo" value="<%=no%>">
</table></form></body></html>