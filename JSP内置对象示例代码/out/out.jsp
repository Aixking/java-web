<%@ page contentType="text/html;charset=GBK" buffer="2kb" autoFlush="false"%>
<%
	out.println("你好！");
	out.clear();
%>
<html>
<head><title>使用out对象输出数据并操作缓冲区</title></head>
<body>
<%
	out.println("再次说你好！"+"<br/>");
	out.println("out对象的缓冲区大小为："+out.getBufferSize()+"字节<br/>");
	out.println("缓冲区剩余大小为："+out.getRemaining()+"字节<br/>");
	out.flush();
	for(int i=0;i<2000;i++){
		out.print("A");
	}
	out.println("<br/>"+out.isAutoFlush());
%>
</body>
</html>
