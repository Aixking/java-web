<%@  page contentType="text/html; charset=GBK" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title这是一个异常处理页面</title>
</head>
<body>
这是一个报错跳转页面；当out.jsp页面发生异常时，会跳转至本页面。<br/>
<b>错误描述：</b><%= exception.toString() %><p/>
<b>详细出错原因:</b>
<pre>
    <%
        exception.printStackTrace(new java.io.PrintWriter(out));
    %>
</pre>
<br></br>本例的错误在于缓冲区过小，应将buffer参数从2kb调高，建议为300kb。或在for循环中减少循环次数，或将autoFlush的值设为true
</body>
</html>