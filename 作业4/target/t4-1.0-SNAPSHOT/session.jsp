<%@ page contentType="text/html;charset=GBK" import="java.util.*"%>
<html>
<head><title>演示session对象的常用方法</title></head>
<body>
会话ID： <%= session.getId() %><br/>
是否新会话：<%= session.isNew() %><br/>
设置和获取属性：
<% session.setAttribute("用户名","管理员");%>
用户名=<%=session.getAttribute("用户名")%><br/>
会话持续时间(s)：<%= session.getMaxInactiveInterval()%><br/>
<% session.setMaxInactiveInterval(300);%>
修改后的会话持续时间(s)：<%= session.getMaxInactiveInterval()%><br/>
<%
	Date creationTime = new Date(session.getCreationTime());
	Date accessedTime = new Date(session.getLastAccessedTime());
%>
会话创建时间：<%= creationTime.toLocaleString() %><br/>
最后一次访问时间：<%= accessedTime.toLocaleString() %>
<%
	 // session.invalidate();
%>
</body>
</html>