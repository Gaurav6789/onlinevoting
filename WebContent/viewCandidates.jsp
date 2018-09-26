<%@page import="model.*,java.util.*"%>
<jsp:useBean id="rc" class="model.RegisterCandidate" ></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>

<%
	List<RegisterCandidate> rcObj=dao.viewCandidates(rc);
	Iterator<RegisterCandidate> it=rcObj.iterator();
%>

<table border="1" width="90%" cellspacing="10" cellpadding="10">
<caption><h1> Candidates Information</h1></caption>
<hr color="red"></hr>
<tr align="center">
<th>Id</th><th>Candid Name</th><th>Party Name</th><th>Aadhar No</th><th>DOB</th><th>Mob No</th><th>Email </th>
</tr> 
<%
			while(it.hasNext())
			{
				rc=it.next();
				out.println("<tr align='center'>");
				out.println("<td>"+rc.getId()+"</td>");
				out.println("<td>"+rc.getcName()+"</td>");
				out.println("<td>"+rc.getpName()+"</td>");
				out.println("<td>"+rc.getAadharNo()+"</td>");
				out.println("<td>"+rc.getDob()+"</td>");
				out.println("<td>"+rc.getMobNo()+"</td>");
				out.println("<td>"+rc.getEmail()+"</td>");
				out.println("</tr>");
			}
 %>
</table>