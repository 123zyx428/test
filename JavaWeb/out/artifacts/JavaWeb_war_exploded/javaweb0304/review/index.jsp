<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies=request.getCookies();
    String name=null;
    String pwd=null;
    //循环遍历cookie数组
    for(Cookie c:cookies){
        if("name".equals(c.getName())){
            name=c.getValue();
        }
        if("pwd".equals(c.getName())){
            pwd=c.getValue();
        }
        if(name!=null&&pwd!=null){
            if(name.equals("张三")&&pwd.equals("123")){
                User user=new User(1,"张三","123",20);
                session.setAttribute("user",user);

            }
        }
    }
%>
<a href="cart.jsp">购物车</a>
<a href="login.jsp">登录</a>
<a href="#">注册</a>

</body>
</html>
