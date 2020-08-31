<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
<%
    for(int i=0;i<10;i++){
    %>
   <tr>
       <td><%=i%></td>
       <td><%=i%></td>
       <td><%=i%></td>
   </tr>
<%
    }
%>
</table>
</body>
</html>
