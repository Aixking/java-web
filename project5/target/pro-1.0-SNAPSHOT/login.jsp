<%--
  Created by IntelliJ IDEA.
  User: WJY
  Date: 2021/3/29
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
  <head>
    <title>自动登录测试</title>
  </head>
  <body>
  <%
      Cookie a[] = request.getCookies();
      if(a!=null)
      {
          for(int i = 0 ; i < a.length;i++)
          {
              if(a[i].getName().equals("user"))
              {
                  String user = a[i].getValue();
                  session.setAttribute("USER",user);
                  response.sendRedirect("zy.jsp");
                  return;
              }
          }
      }
  %>
  <form action="dealLogin.jsp" method="post">
      用户名:<input type="text" name="user"/><p/>
      密码:<input type="text" name="pw"/><p/>
      不保存用户名:<input type="radio" name="ch" value="0" checked><p/>
      保存用户名:
      <input type="radio" name="ch" value="60"/>一分钟
      <input type="radio" name="ch" value="3600"/>一小时
      <input type="radio" name="ch" value="86400"/>一天
      <input type="radio" name="ch" value="604800"/>一周
      <input type="radio" name="ch" value="2592000"/>一月
      <input type="radio" name="ch" value="31536000"/>一年
      <p/>
      <input type="submit" value="登录"/>
  </form>
  </body>
</html>
