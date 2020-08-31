<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 18:01
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
    if(ms!=null){
        out.print(ms);
    }
%>
<form action="sever.jsp" method="post">
    姓名:<input type="text" name="uname"><br>
    密码:<input type="password" name="pwd"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
