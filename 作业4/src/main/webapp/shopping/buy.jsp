<%@ page pageEncoding="GBK" import="java.util.*" %>
<%@ include file="check.jsp" %>
<%	request.setCharacterEncoding("GBK");
	String goods =  request.getParameter("goods");//��ȡgoods��Ϣ
	if(goods == null){
		response.sendRedirect("success.jsp");//���goodsΪ�գ��Ǿ��ض��򵽵�¼����
	}else{
		ArrayList<String> carts = (ArrayList<String>)session.getAttribute("carts");//ͨ��session��ȡ���ﳵ�����Ʒ��Ϣ
		if(carts == null){//������ﳵΪ�գ���ô�͸�һ���յ�ArrayList
			carts = new ArrayList<String>();
		}
		carts.add(goods);//���ﳵ�������Ʒ
		session.setAttribute("carts", carts);//�ѹ��ﳵ�浽session��ȥ
		response.sendRedirect("cart.jsp");//�ض��򵽹��ﳵҳ��

	}
%>