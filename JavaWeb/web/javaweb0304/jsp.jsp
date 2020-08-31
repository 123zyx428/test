<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    //初始化 第一次加载jsp文件时
    public void jspInit(){
        System.out.println("这是初始化方法");
    }
    //销毁 关闭服务是执行
    public void jspDestory(){
        System.out.println("这是销毁方法");
    }
%>
<%
    //service
    System.out.println("这是服务的方法");
%>
</body>
</html>
