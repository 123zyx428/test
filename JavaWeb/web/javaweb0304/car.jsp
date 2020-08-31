<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<body>
<%
    //访问购物车前，先查看是否是登录状态（这个信息通常存储在session）
    User u=(User)session.getAttribute("user");
    if(u==null){
        //如果当前登录用户是空，证明没有登陆过，跳转到登录页面
        response.sendRedirect("login0304.jsp");
    }
%>
<table width="800px">
    <tr>
        <td>图片</td>
        <td>名称</td>
        <td>数量</td>
        <td>总价</td>
    </tr>
    <tr>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
    </tr>
</table>
</body>
</html>
