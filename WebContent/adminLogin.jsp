<%
	String id=request.getParameter("id");
	String password=request.getParameter("password");
	if(id.equals("admin")&&password.equals("pass"))
	{
		session.setAttribute("id",id);
		response.sendRedirect("welcomeAdmin.jsp");
	}
	else
	{
		response.sendRedirect("errorAdmin.jsp");
	}
%>