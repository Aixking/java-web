<%@ page contentType="text/html;charset=GBK"%>
<%@ include file="check.jsp" %>
<html>
<head>
     <title>��Ʒ��</title>
</head>
<body>
<%@ include file="head.jsp" %>
<div align="center">
<%=name %>����ӭ��ѡ����Ʒ!
<form action="buy.jsp" method="post">
<select name="goods">
	<option value="ơ��">ơ��</option>
	<option value="����">����</option>
	<option value="ţ��">ţ��</option>
	<option value="����">����</option>  
</select>
<input type="submit" value="���빺�ﳵ" />
</form>
</div>
</body>
</html>