<%@ page contentType="text/html;charset=GBK"%>
<%@ include file="check.jsp" %>
<html>
<head>
     <title>ˮ����</title>
</head>
<body>
<%@ include file="head.jsp" %>
<div align="center">
<%=name %>����ӭ��ѡ��ˮ��!
<form action="buy.jsp" method="post">
<select name="goods">
	<option value="��">��</option>
	<option value="ƻ��">ƻ��</option>
	<option value="�㽶">�㽶</option>
	<option value="����">����</option>  
</select>
<input type="submit" value="���빺�ﳵ" />
</form>
</div>
</body>
</html>