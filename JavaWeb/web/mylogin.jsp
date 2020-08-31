<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/3
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String ms=(String) request.getAttribute("message");
    if(!(ms==null)){
        out.print(ms);
    }
%>
<form action="service.jsp">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="uname"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>

</form>

</body>
</html>
