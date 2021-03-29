<%@ page pageEncoding="GBK" import="java.util.*" %>
<%@ include file="check.jsp" %>
<%	request.setCharacterEncoding("GBK");
	String goods =  request.getParameter("goods");//获取goods信息
	if(goods == null){
		response.sendRedirect("success.jsp");//如果goods为空，那就重定向到登录界面
	}else{
		ArrayList<String> carts = (ArrayList<String>)session.getAttribute("carts");//通过session获取购物车里的商品信息
		if(carts == null){//如果购物车为空，那么就给一个空的ArrayList
			carts = new ArrayList<String>();
		}
		carts.add(goods);//向购物车里添加商品
		session.setAttribute("carts", carts);//把购物车存到session中去
		response.sendRedirect("cart.jsp");//重定向到购物车页面

	}
%>