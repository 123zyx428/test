<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    User user=(User)session.getAttribute("user");
    if(user==null){
        response.sendRedirect("login.jsp");
    }
%>
<body>
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
