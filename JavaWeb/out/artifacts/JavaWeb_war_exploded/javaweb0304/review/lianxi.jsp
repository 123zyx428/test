<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <ul>
        <%
        for(int i=0;i<10;i++){
         %>
        <li><%=i%></li>
        <%
             }
        %>


    </ul>

</body>
</html>
