<%@ page contentType="text/html;charset=GBK" import="java.util.*"%>
<html>
<head><title>��ʾsession����ĳ��÷���</title></head>
<body>
�ỰID�� <%= session.getId() %><br/>
�Ƿ��»Ự��<%= session.isNew() %><br/>
���úͻ�ȡ���ԣ�
<% session.setAttribute("�û���","����Ա");%>
�û���=<%=session.getAttribute("�û���")%><br/>
�Ự����ʱ��(s)��<%= session.getMaxInactiveInterval()%><br/>
<% session.setMaxInactiveInterval(300);%>
�޸ĺ�ĻỰ����ʱ��(s)��<%= session.getMaxInactiveInterval()%><br/>
<%
	Date creationTime = new Date(session.getCreationTime());
	Date accessedTime = new Date(session.getLastAccessedTime());
%>
�Ự����ʱ�䣺<%= creationTime.toLocaleString() %><br/>
���һ�η���ʱ�䣺<%= accessedTime.toLocaleString() %>
<%
	 // session.invalidate();
%>
</body>
</html>