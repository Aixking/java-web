<%--
  Created by IntelliJ IDEA.
  User: WJY
  Date: 2021/3/22
  Time: 16:03:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>数字抽奖大挑战-主页</title>
<style type="text/css">
    tr{
        text-align: center;
    }
</style>
</head>
<body>
<form action="showLuckyNum.jsp" method="post"> //通过post传参
    <table align="center">
        <tr><td>测试一下你的运气怎么吧~~数字抽奖大挑战恭候你哦</td></tr>
        <tr><td>版本：1.0</td></tr>
        <tr><td>请输入0-9之间的任意一个数字抽奖，祝你好运！……</td></tr>
        <tr><td>
            <input type="text" name="num" value="">
            <button type="submit">开奖</button>
        </td></tr>
    </table>
</form>
</body>
</html>