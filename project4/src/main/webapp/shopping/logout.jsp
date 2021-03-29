<%@ page contentType="text/html;charset=GBK"%>
<%
	session.invalidate();
	out.println("正在退出，5秒后返回<a href=\"login.html\">登录页面</a>！</h3>");
	response.setHeader("Refresh","5;url=login.html");
%>