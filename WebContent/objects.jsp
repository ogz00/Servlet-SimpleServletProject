<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<%!public void jspInit(){
	String defaultUser =getServletConfig().getInitParameter("defaultUser");
	ServletContext context = getServletContext();
	context.setAttribute("defaultUser", defaultUser);
}	
		
	%>

<body>

<br>
Default User Name from the servlet-config is: <%=getServletConfig().getInitParameter("defaultUser")%>
<br>
Default user name from the servlet Context is: <%=getServletContext().getAttribute("defaultUser") %>

<% String userName = request.getParameter("name");
if(userName !=null){
	session.setAttribute("sessionUserName",userName);
	application.setAttribute("applicationUserName", userName);
	pageContext.setAttribute("pageUserName", userName);
} %>



<br>
Username in request object is : <%=userName %>
<br>
Username in Session object is:<%=session.getAttribute("sessionUserName") %>
<br>
Username in Application object is: <%=application.getAttribute("applicationUserName") %>
<br>
Username in pageContext is: <%=pageContext.getAttribute("pageUserName") %>





</body>
</html>