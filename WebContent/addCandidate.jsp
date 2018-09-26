<jsp:useBean id="rc" class="model.RegisterCandidate"></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>
<%
	Integer id=Integer.parseInt(request.getParameter("id"));
	String cName=request.getParameter("cName");
	String pName=request.getParameter("pName");
	long aadharNo = Long.parseLong(request.getParameter("aadharNo"));
	String dob=request.getParameter("dob");
	long mobNo=Long.parseLong(request.getParameter("mobNo"));
	String email=request.getParameter("email");

	rc.setId(id);
	rc.setcName(cName);
	rc.setpName(pName);
	rc.setAadharNo(aadharNo);
	rc.setDob(dob); 
	rc.setMobNo(mobNo);
	rc.setEmail(email);
	dao.registerCandidate(rc);
	response.sendRedirect("welcomeAdmin.jsp");
%>