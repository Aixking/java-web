<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="java.util.Date" %>
<html>
<head>
<title>ʹ��response����ʵ��ҳ��ˢ��</title>
</head>
<body>
��ǰʱ��Ϊ��
<%
	out.println(new Date().toLocaleString());
%>
<br/>
3���Ժ��Զ�ˢ�µ�setHeader1.jspҳ�档
<%
	response.setHeader("Refresh","3;url=setHeader1.jsp");
%>
</body>
</html>
