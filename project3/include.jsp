<%@ page contentType="text/html;charset=GBK" %>
<html>
<head><title>include ������ʹ��</title></head>
<body>
<h1>include ������ʹ��</h1>
<jsp:include page = "box.jsp">
<jsp:param name="color" value="#00FF00" />
<jsp:param name="title" value="This is the title" />
<jsp:param name="content" value="This is the content" />
</jsp:include>
</body>
</html>