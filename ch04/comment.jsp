<%@ page contentType="text/html;charset=GBK" %>
<html>
  <head><title>注释的使用</title></head>
  <body>
  <h2>
  <ol>
  <li>HTML注释</li>
  <!--这里是HTML格式的注释，表达式的值是<%=1+2+3 %> -->
  <li>Java注释</li> 
  <% 
	//这里是Java语言的单行注释，下面是多行注释
  	/*
		String a="asb";
		String b="dfb";
     */
	String s1="此信息不会显示在页面源代码和Servlet中";
  %>
  <li>JSP注释</li>
  <%--这里是开发人员专用的JSP注释--%>
  <%--
  	String s2="此信息不会显示在Servlet中";
  --%>
  </ol>
  </h2>
  </body>
</html>
