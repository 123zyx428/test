<%@ page import="java.util.List" %>
<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <tr>
        <td>序号</td>
        <td>姓名</td>
        <td>密码</td>
        <td>年龄</td>
    </tr>

<%
    //获取集合
    List<User> list =(List<User>) request.getAttribute("users");
    for(User user:list){
        %>
        <tr>
            <td><%=user.getId()%></td>
            <td><%=user.getUsername()%></td>
            <td><%=user.getPwd()%></td>
            <td><%=user.getAge()%></td>
        </tr>
    <%
    }
 %>
</table>
</body>
</html>
