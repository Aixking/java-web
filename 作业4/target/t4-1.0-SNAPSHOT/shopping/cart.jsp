<%@ page import="java.util.*" pageEncoding="GBK"%>
<%@ include file="check.jsp" %>
<html>
<head><title>���ﳵ</title></head>
<body>
<%@ include file="head.jsp" %>
<div align="center">
<%
	ArrayList<String> carts = (ArrayList<String>)session.getAttribute("carts");
	if(carts ==  null){
		out.println(name+"�Ĺ��ﳵΪ�գ�");
	}else{
		out.println(name+"�Ĺ��ﳵ�а�����");
		for(String c:carts){
			out.print(c+"&nbsp;");
		}
		out.println();
	}
%>
</div>
</body>
</html>