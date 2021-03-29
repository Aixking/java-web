<%--
  Created by IntelliJ IDEA.
  User: WJY
  Date: 2021/3/22
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" pageEncoding="GBK" %>
<html>
<head>
    <title>自动登录</title>
</head>
<body>
<form action="index.jsp" method="post">
<p align="center">
    <%=request.getParameter("name")%>,欢迎您注册本网站！</br>您现在已经登录，5秒钟后将自动转向首页。</br>
    若跳转不成功，请单击首页完成跳转
</br>    用户名：<%=request.getParameter("name")%>
</br>
    密码：<%=request.getParameter("pw")%>
</p>
    <%
        response.setHeader("Refresh","5;");
        response.sendRedirect("index.jsp?name="+request.getParameter("name"));
    %>
<p align="center">
    <a href = "index.jsp?>首页</a>
</p>
</form>
</body>
</html>
