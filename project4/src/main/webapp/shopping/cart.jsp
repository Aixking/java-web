<%@ page import="java.util.*" pageEncoding="GBK"%>
<%@ include file="check.jsp" %>
<html>
<head><title>���ﳵ</title></head>
<body>
<%@ include file="head.jsp" %>
<div align="center">
<%
	ArrayList<String> carts = (ArrayList<String>)session.getAttribute("carts");//��session�л�ȡ���ﳵ
	if(carts ==  null){
		out.println(name+"�Ĺ��ﳵΪ�գ�");//���ͨ��session��ȡ���Ĺ��ﳵ���ǿյģ��Ǿ�������û��Ĺ��ﳵΪ��
	}else{
		out.println(name+"�Ĺ��ﳵ�а�����");
		for(String c:carts){
			out.print(c+"&nbsp;");//�����Ϊ�գ��Ǿͱ����������ﳵ�����,&nbsp��ת���ַ�������һ���ո�
		}
		out.println();
	}
%>
</div>
</body>
</html>