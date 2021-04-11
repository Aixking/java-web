<%@ page pageEncoding="utf-8" import="java.sql.*" %>
<html>
<head>
<title>music</title>
<link rel="stylesheet" href="music.css" type="text/css">
</head>
<body>
<h2 align="center">music</h2>
<p align="center"><a href="addmusic.html">添加歌曲</a><p>
<p align="center"><a href="searchmusic.html">搜索歌曲</a><p>
<table align="center" width="50%" border="1">
<th>序号</th><th>曲名</th><th>歌手</th><th>排名</th></tr>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","959521");
		String sql="select * from music";
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
	%>
			<tr><td><%=rs.getInt("id") %></td>
			<td><%=rs.getString("musicname") %></td>
			<td><%=rs.getString("singer") %></td>
			<td><%=rs.getInt("rank") %></td>&nbsp;

	<%
		}
		rs.close();
		stmt.close();
		con.close();
	%>
</table>
</body>
</html>