<%@page contentType="text/html; charset=GBK"%>
<html>
<head>
    <title>��¼����</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String name=request.getParameter("name");
    String pw=request.getParameter("pw");
    if(name!=null&&pw!=null&&name.equals("kongkong")&&pw.equals("123456"))
    {
        response.sendRedirect("index.jsp?name="+name);
    }else{
        out.println("<h3>�û������������5��󷵻�<a href=\"login.html\">��¼ҳ��</a></h3>");
        response.setHeader("Refresh","5;url=login.html");
    }
%>
</body>
</html>