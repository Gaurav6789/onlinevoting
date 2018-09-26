<jsp:useBean id="view" class="model.ViewVotes"></jsp:useBean>
<jsp:useBean id="dao" class="dao.VoterDao"></jsp:useBean>

<%
	view.setAadharNo(Long.parseLong(request.getParameter("aadharNo")));
	view.setpName(request.getParameter("pName"));
	dao.addVote(view);
	response.sendRedirect("finalPage.jsp");
%>