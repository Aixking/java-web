<%@ page contentType="text/html;charset=GBK" %>
<html>
<head>
<title>请求超时的网页</title>
</head>
<body>
<h1>请求超时的网页</h1>
<%
	//sc_REQUEST_TIMEOUT=408
	response.setStatus(408);
%>
</body>
</html>