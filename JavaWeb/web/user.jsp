<%@ page import="javax.swing.*" %>
<%@ page import="java.util.List" %>
<%@ page import="javaweb0302.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<table width="600px" border="1"  cellspacing="0" cellpadding="0" align="center" >--%>
<%--    <tr>--%>
<%--        <td>序号</td>--%>
<%--        <td>用户名</td>--%>
<%--        <td>密码</td>--%>
<%--        <td>年龄</td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--       for (int i=0;i<4;i++){--%>
<%--           User use=(User)request.getAttribute("list"+i);--%>
<%--//           out.print(use.getId());--%>
<%--           out.print("<tr>"--%>
<%--              +"<td>"+use.getId()+"</td>"--%>
<%--              +"<td>"+use.getUsername()+"</td>"--%>
<%--              +"<td>"+use.getPwd()+"</td>"--%>
<%--              +"<td>"+use.getAge()+"</td>"--%>
<%--              +"</tr>"--%>
<%--           );--%>
<%--       }--%>
<%--    %>--%>
<%--</table>--%>
<table border="1" align="center" cellspacing="0" width="800">
    <tr>
        <td>序号</td>
        <td>用户名</td>
        <td>密码</td>
        <td>年龄</td>
    </tr>
    <%
        //获取集合
        List<User> list =(List<User>) request.getAttribute("users");
        for(User u:list){
    %>
    <tr>
        <td><%=u.getId()%></td>
        <td><%=u.getUsername()%></td>
        <td><%=u.getPwd()%></td>
        <td><%=u.getAge()%></td>
    </tr>
    <%

        }
    %>
</table>

</body>
</html>
