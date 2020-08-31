<%@ page import="javaweb0302.User" %><%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
    <%
        //取出Cookie中的值
        Cookie[] cookies=request.getCookies();
        String name=null;
        String pwd=null;
        //循环取出需要的值
        for(Cookie c:cookies){
            //从cookies找到名字name,pwd，然后把值赋值给变量
            if("name".equals(c.getName())){
                name=c.getValue();
            }
            if("pwd".equals(c.getName())){
                pwd=c.getValue();
            }
            //如果name,pwd的值不为空，就把对象存在session中，下次登录直接在car中取到session值
            if(name!=null&&pwd!=null){
                if(name.equals("张三")&&pwd.equals("123")){
                    User user=new User(1,"张三","123",20);
                    session.setAttribute("user",user);
                }
            }
        }

    %>
    <a href="car.jsp">购物车</a>
    <a href="login0304.jsp">登录</a>
    <a href="#">注册</a>
</body>
</html>
