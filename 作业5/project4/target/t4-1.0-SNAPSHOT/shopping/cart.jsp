<%@ page import="java.util.*" pageEncoding="GBK"%>
<%@ include file="check.jsp" %>
<html>
<head><title>购物车</title></head>
<body>
<%@ include file="head.jsp" %>
<div align="center">
<%
	ArrayList<String> carts = (ArrayList<String>)session.getAttribute("carts");//从session中获取购物车
	if(carts ==  null){
		out.println(name+"的购物车为空！");//如果通过session获取到的购物车里是空的，那就输出此用户的购物车为空
	}else{
		out.println(name+"的购物车中包括：");
		for(String c:carts){
			out.print(c+"&nbsp;");//如果不为空，那就遍历整个购物车并输出,&nbsp是转义字符，代表一个空格
		}
		out.println();
	}
%>
</div>
</body>
</html>