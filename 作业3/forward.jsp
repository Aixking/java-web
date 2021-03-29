<%@ page pageEncoding="GBK" %>
<%
	String age = request.getParameter("age");
	String access = null;
	if(Integer.parseInt(age)>=18){
		access = "OK";
	}
	else{
		access = "NO";
	}
%>
<jsp:forward page = "next.jsp">
	<jsp:param value = "<%=access%>" name = "access" />
</jsp:forward>