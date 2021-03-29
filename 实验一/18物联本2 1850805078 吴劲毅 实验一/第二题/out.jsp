<%@ page import="java.nio.BufferOverflowException" %>
<%@ page contentType="text/html; charset=GBK" buffer="2kb" autoFlush="false" errorPage="error.jsp"%>

<html>
<head><title>out对象对缓冲区进行操作</title></head>
<body>
<%
    out.println("Say hello"+"<br>");
    out.print("BufferSize of the out Object is : "+out.getBufferSize()+",");
    out.println("Remain of buffer is:"+out.getRemaining()+"<br>");
%>
<%
    try {
        for (int i = 0; i < 2220; i++) {
            out.print("c");
        }
    }catch(BufferOverflowException e){
        out.println(e);
    }
%>
</body>
</html>
