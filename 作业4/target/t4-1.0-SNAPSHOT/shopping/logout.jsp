<%@ page contentType="text/html;charset=GBK"%>
<%
	session.invalidate();
	out.println("�����˳���5��󷵻�<a href=\"login.html\">��¼ҳ��</a>��</h3>");
	response.setHeader("Refresh","5;url=login.html");
%>