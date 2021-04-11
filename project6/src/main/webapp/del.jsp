<%@ page pageEncoding="utf-8" import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","959521");
	String sql="delete from bookinfo where id=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setInt(1, Integer.parseInt(id));
	int result = pstmt.executeUpdate();
	String msg = "删除失败，点击确定跳转到图书列表页！";
	if(result == 1){
		msg = "删除成功，点击确定跳转到图书列表页！";
	}
	pstmt.close();
	con.close();
%>
<script>window.alert('<%=msg%>');</script>
<%
	response.setHeader("Refresh", "1;url=index.jsp");
%>