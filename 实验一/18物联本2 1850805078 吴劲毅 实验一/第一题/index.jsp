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
        out.println("ҹ���ˣ�ע����Ϣ����");
    }else if(d.getHours()>4&&d.getHours()<=7){
        out.println("�峿�ã���������ѽ����ҹ��Ҫע�����塭��");
    }else if(d.getHours()>7&&d.getHours()<=11){
        out.println("����ã����Ž���϶����ջ�");
    }else if(d.getHours()>11&&d.getHours()<=14){
        out.println("����ã��ʵ���Ϣ���б�ҪŶ��");
    }else if(d.getHours()>14&&d.getHours()<=18){
        out.println("����ã����˾ͺȱ�������Ϣһ�°ɣ�");
    }else{
        out.println("���Ϻã������Ƿ������ѽ��");
    }
%>
</body>
</html>