<%@ page contentType="text/html;charset=GBK" buffer="2kb" autoFlush="false"%>
<%
	out.println("��ã�");
	out.clear();
%>
<html>
<head><title>ʹ��out����������ݲ�����������</title></head>
<body>
<%
	out.println("�ٴ�˵��ã�"+"<br/>");
	out.println("out����Ļ�������СΪ��"+out.getBufferSize()+"�ֽ�<br/>");
	out.println("������ʣ���СΪ��"+out.getRemaining()+"�ֽ�<br/>");
	out.flush();
	for(int i=0;i<2000;i++){
		out.print("A");
	}
	out.println("<br/>"+out.isAutoFlush());
%>
</body>
</html>
