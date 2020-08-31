<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/3
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="index.jsp" method="post">
    <%String ms=(String)request.getAttribute("message");
    if(!(ms==null)){
    out.print(ms);
    request.setAttribute("message","修改之后的值");
//    request.removeAttribute("message");
    out.print((String)request.getAttribute("message"));
    }
    %>
    <table>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="uname"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="pwd"></td>
        </tr>
<%--        <tr>--%>
<%--            <td>性别</td>--%>
<%--            <td>--%>
<%--                <input type="radio" name="sex" value="men">男--%>
<%--                <input type="radio" name="sex" value="women">女--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>爱好</td>--%>
<%--        <td>--%>
<%--            <input type="checkbox" value="eat" name="hobby">吃--%>
<%--            <input type="checkbox" value="drink" name="hobby">喝--%>
<%--            <input type="checkbox" value="play" name="hobby">玩--%>
<%--            <input type="checkbox" value="happy" name="hobby">乐--%>
<%--        </td>--%>
<%--        </tr>--%>
        <tr>
            <td></td>
            <td><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>

</body>
</html>
