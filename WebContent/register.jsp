<%@page import="java.util.*" %>
<jsp:useBean id="rv" class="model.RegisterVoter"></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>
<%
	String name=request.getParameter("name");
	long aadharNo = Long.parseLong(request.getParameter("aadharNo"));
	String dob=request.getParameter("dob");
	long mobileNo=Long.parseLong(request.getParameter("mobileNo"));
	String email=request.getParameter("email");

	rv.setName(name);
	rv.setAadharNo(aadharNo);
	rv.setDob(dob); 
	rv.setMobileNo(mobileNo);
	rv.setEmail(email);
	dao.registerVoter(rv);
	response.sendRedirect("index.jsp");
%>