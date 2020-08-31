<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Integer count=(Integer) application.getAttribute("count");
    if(count==null){
        //用户第一次登录
        count=1;
    }else{
        count++;
    }
    application.setAttribute("count",count);
%>

登录成功!<br>
用户名为：<%=((User)(session.getAttribute("user"))).getUsername()%>,您是第<%=count%> 个登录的用户！
<a href="index.jsp">返回首页</a>
</body>
</html>
