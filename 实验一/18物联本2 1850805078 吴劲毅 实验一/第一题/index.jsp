<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
</head>
<body>
<%
    Date d=new Date();
    if(d.getHours()>=0&&d.getHours()<=4){
        out.println("夜深了，注意休息啊！");
    }else if(d.getHours()>4&&d.getHours()<=7){
        out.println("清晨好，您可真早呀！熬夜可要注意身体……");
    }else if(d.getHours()>7&&d.getHours()<=11){
        out.println("上午好，相信今天肯定有收获！");
    }else if(d.getHours()>11&&d.getHours()<=14){
        out.println("中午好，适当休息很有必要哦！");
    }else if(d.getHours()>14&&d.getHours()<=18){
        out.println("下午好，困了就喝杯咖啡休息一下吧！");
    }else{
        out.println("晚上好，您真是分秒必争呀！");
    }
%>
</body>
</html>