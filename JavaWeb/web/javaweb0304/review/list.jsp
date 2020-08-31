<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        List<User> list=new ArrayList<User>();
        list.add(new User(1,"张三","123",23));
        list.add(new User(2,"李四","567",22));
        list.add(new User(3,"王五","111",26));
        list.add(new User(4,"赵六","222",20));

        request.setAttribute("users",list);
        request.getRequestDispatcher("info.jsp").forward(request,response);



    %>
</body>
</html>
