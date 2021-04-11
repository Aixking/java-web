<%@ page pageEncoding = "utf-8" import = "java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String musicname = request.getParameter("musicname");
	String singer = request.getParameter("singer");
	String rank = request.getParameter("rank");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","959521");
	String sql="insert into music values(null,?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1, musicname);
	pstmt.setString(2, singer);
	try {
		pstmt.setInt(3, Integer.parseInt(rank));
	} catch (SQLException throwables) {
		throwables.printStackTrace();
	}
	int result = pstmt.executeUpdate();
	String msg = "添加失败，点击确定跳转到音乐列表页！";
	if(result == 1){
		msg = "添加成功，点击确定跳转到音乐列表页！";
	}
	pstmt.close();
	con.close();
%>
<script>window.alert('<%=msg%>');</script>
<%
	response.setHeader("Refresh","1;url = index.jsp");
%>