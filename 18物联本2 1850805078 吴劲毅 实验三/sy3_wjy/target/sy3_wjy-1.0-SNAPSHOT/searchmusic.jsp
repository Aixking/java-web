<%@ page pageEncoding = "utf-8" import = "java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>music</title>
    <link rel="stylesheet" href="music.css" type="text/css">
</head>
<body>
<h2 align="center">搜索音乐</h2>
<table align="center" width="50%" border="1">
    <tr><th>序号</th><th>曲名</th><th>歌手</th><th>排名</th></tr>
<%
    request.setCharacterEncoding("utf-8");
    String musicname = request.getParameter("musicname");
    String singer = request.getParameter("singer");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","959521");
    String sql = "select * from music where musicname = ? or singer = ?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, musicname);
    pstmt.setString(2, singer);
    ResultSet result = pstmt.executeQuery();
    while (result.next()) {

%>
    <tr><td><%=result.getInt("id") %></td>
        <td><%=result.getString("musicname") %></td>
        <td><%=result.getString("singer") %></td>
        <td><%=result.getInt("rank") %></td>
    <%
            }
        result.close();
		pstmt.close();
		con.close();
    %>
</table>
</body>
</html>