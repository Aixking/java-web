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
    <title>�Զ���¼</title>
</head>
<body>
<form action="index.jsp" method="post">
<p align="center">
    <%=request.getParameter("name")%>,��ӭ��ע�᱾��վ��</br>�������Ѿ���¼��5���Ӻ��Զ�ת����ҳ��</br>
    ����ת���ɹ����뵥����ҳ�����ת
</br>    �û�����<%=request.getParameter("name")%>
</br>
    ���룺<%=request.getParameter("pw")%>
</p>
    <%
        response.setHeader("Refresh","5;");
        response.sendRedirect("index.jsp?name="+request.getParameter("name"));
    %>
<p align="center">
    <a href = "index.jsp?>��ҳ</a>
</p>
</form>
</body>
</html>
