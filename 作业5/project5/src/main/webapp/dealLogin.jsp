<%--
  Created by IntelliJ IDEA.
  User: WJY
  Date: 2021/3/29
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="GBK" %>
<%
    request.setCharacterEncoding("GBK");
    String user = request.getParameter("user");
    String pw = request.getParameter("pw");
    if(user!=null&&pw!=null&&user.equals("zhangsan")&&pw.equals("123")){
        session.setAttribute("user",user);
        String ch = request.getParameter("ch");
        if(ch!=null)
        {
            int time=Integer.parseInt(ch);
            if(time>0)
            {
                Cookie c = new Cookie("user",user);
                c.setMaxAge(time);
                response.addCookie(c);
            }
        }
        response.sendRedirect("zy.jsp");
    }else
    {
        response.sendRedirect("login.jsp");
    }
%>