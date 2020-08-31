<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //Cookie存在客户端
        //session存在服务器
        Cookie[] cookies=request.getCookies();
        for(Cookie c:cookies){
            if("name".equals(c.getName())){
                out.print(c.getValue());
            }
//            out.print(c.getName());
//            out.print("<br>");
        }
    %>
</body>
</html>
