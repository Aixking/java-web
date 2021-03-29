<%@ page contentType="text/html;charset=GBK"%>
<html>
<head><title>登录处理</title></head>
<body>
<%
	request.setCharacterEncoding("GBK");
	String name=request.getParameter("name");
	String pw=request.getParameter("pw");
	if(name!=null && pw!=null && name.equals("admin") && pw.equals("123")){
		session.setAttribute("loginUserName", name);
		response.sendRedirect("success.jsp");
	}else{
		out.println("<h3>用户名或密码错误，5秒后返回<a href=\"login.html\">登录页面</a>！</h3>");
		response.setHeader("Refresh","5;url=login.html");
	}
%>
</body>
</html>