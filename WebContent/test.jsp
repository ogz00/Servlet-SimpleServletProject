<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Simple JSP </h3>
	<%!
	public int add(int a , int b){
		return a+b;
	}
	%>
	<%
	int i =11;
	int y= add(i,2);
	%>
	
	<br><br>
	<h3>The value of integer is: <%=i%></h3>
	<br><br>
	<h3>The value of total is: <%=y%></h3>
</body>
</html>