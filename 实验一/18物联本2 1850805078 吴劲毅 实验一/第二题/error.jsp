<%@  page contentType="text/html; charset=GBK" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title����һ���쳣����ҳ��</title>
</head>
<body>
����һ��������תҳ�棻��out.jspҳ�淢���쳣ʱ������ת����ҳ�档<br/>
<b>����������</b><%= exception.toString() %><p/>
<b>��ϸ����ԭ��:</b>
<pre>
    <%
        exception.printStackTrace(new java.io.PrintWriter(out));
    %>
</pre>
<br></br>�����Ĵ������ڻ�������С��Ӧ��buffer������2kb���ߣ�����Ϊ300kb������forѭ���м���ѭ����������autoFlush��ֵ��Ϊtrue
</body>
</html>