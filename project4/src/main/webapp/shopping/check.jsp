<%@ page contentType="text/html;charset=GBK"%>
<%
	String name=(String)session.getAttribute("loginUserName");
	if(name == null){
		out.println("<h3>���ȵ�¼�ٷ��ʣ�5��󷵻�<a href=\"login.html\">��¼ҳ��</a>��</h3>");
		response.setHeader("Refresh","5;url=login.html");
		return;
	}
%>