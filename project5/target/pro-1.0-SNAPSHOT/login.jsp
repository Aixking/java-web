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
    <title>�Զ���¼����</title>
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
      �û���:<input type="text" name="user"/><p/>
      ����:<input type="text" name="pw"/><p/>
      �������û���:<input type="radio" name="ch" value="0" checked><p/>
      �����û���:
      <input type="radio" name="ch" value="60"/>һ����
      <input type="radio" name="ch" value="3600"/>һСʱ
      <input type="radio" name="ch" value="86400"/>һ��
      <input type="radio" name="ch" value="604800"/>һ��
      <input type="radio" name="ch" value="2592000"/>һ��
      <input type="radio" name="ch" value="31536000"/>һ��
      <p/>
      <input type="submit" value="��¼"/>
  </form>
  </body>
</html>
