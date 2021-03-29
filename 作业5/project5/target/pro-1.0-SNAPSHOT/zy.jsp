<%--
  Created by IntelliJ IDEA.
  User: WJY
  Date: 2021/3/29
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="GBK" %>
<html>
<head>
    <title>用户主页</title>
</head>
<body>
<%
    String user = (String)session.getAttribute("user");
    if(user == null)
    {
        response.sendRedirect("login.jsp");
    }else{
        %>
    欢迎<%= user%>,这是您的主页!<%}%>
</body>
</html>
