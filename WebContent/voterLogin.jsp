<%@page import="dao.*,model.*"%>
<%
		long aadharNo=Long.parseLong(request.getParameter("aadharNo"));
		
		ViewVotes v=new ViewVotes();
		v.setAadharNo(aadharNo);
		RegisterVoter rv=new RegisterVoter();
		rv.setAadharNo(aadharNo);
		VoterDao voterDao=new VoterDao();
		Boolean b=voterDao.validate(v);
		Boolean b1=voterDao.checkVoter(rv);
		if(b==true&&b1==true)
		{
			 out.println("Alert Box");
		}
		else if(b1==false)
		{
			out.println("<h1> U are not a registered Voter ...<br> Please register here</h1>");
			//RequestDispatcher rd=
			//response.sendRedirect("registerIndex.jsp");
		}
		else
		{
			response.sendRedirect("vote.jsp?aadharNo="+request.getParameter("aadharNo"));
		}


%>
<html> 
<script>
function myFunction() {
    alert("Hello! I am an alert box!");
}
</script>
<body></body>
</html>