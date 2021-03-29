<%--
  Created by IntelliJ IDEA.
  User: WJY
  Date: 2021/3/22
  Time: 16:07:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>数字抽奖大挑战-开奖</title>
    <style type="text/css">
        tr{
            text-align: center;
        }
    </style>
</head>
<body>
<%out.print("<table align=\"center\">");
    String num=request.getParameter("num");
    Random rand = new Random();
    int rannum = rand.nextInt(10);

    out.print("<tr align=\"center\"><td>测试一下你的运气怎么吧~~数字抽奖大挑战，恭候你哦！……</td></tr>");

    out.print("<tr align=\"center\"><td>版本：1.0</td></tr>");

    if(Integer.parseInt(num)==rannum) {
        out.print("<tr align=\"center\"><td style=\"font-family:arial;color:red;font-size:20px;\">你选择的数字是" + num+"</td></tr>");

        out.print("<tr align=\"center\"><td style=\"font-family:arial;color:red;font-size:20px;\">本次幸运数字是" + rannum+"</td></tr>");

    out.print("<tr align=\"center\"><td style=\"font-family:arial;color:red;font-size:20px;\">" +
            "你真是太幸运了！恭喜你，中奖了！</td></tr>");
    }else{
        out.print("<tr align=\"center\"><td style=\"font-family:arial;color:red;font-size:20px;\">" +
                "你选择的数字是"  + num+"</td></tr>");
       out.print("<tr align=\"center\"><td style=\"font-family:arial;color:red;font-size:20px;\">" +
               "本次幸运数字是"   + rannum+"</td></tr>");
       out.print("<tr align=\"center\"><td style=\"font-family:arial;color:red;font-size:20px;\">" +
               "很遗憾！没有中奖，下次再努力吧！</td></tr>");
    }
    out.print("<tr align=\"center\"><td><a href=\"luckyNum.jsp\">" +
            "返回抽奖首页</a></td></tr>");
       out.print("</table>");
%>
</body>
</html>
