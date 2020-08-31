<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<%
    //获取当前的访问量，从application里面取
    Integer count=(Integer) application.getAttribute("count");
    if (count == null) {
    //证明第一次访问
        count=1;
    }else{
    //访问量累加
        count++;
    }
    //重新存储count
    application.setAttribute("count",count);
%>


登录成功，欢迎您:<%=((User)(session.getAttribute("user"))).getUsername()%>,您是第<%=count%>个访问本网站的用户
<br>
<a href="index.jsp">返回首页</a>
</body>
</html>
