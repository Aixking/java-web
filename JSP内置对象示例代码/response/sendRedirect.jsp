<%@ page contentType="text/html;charset=GBK" %>
<html>
<head><title>页面重定向</title></head>
<body>
<h1>
<%
	//页面重定向到sendRedirect1.jsp
	response.sendRedirect("sendRedirect1.jsp?name=Jack");
%>
</h1>
</body>
</html>