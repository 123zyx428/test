<%@ page import="javaweb0302.User" %>
<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/4
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //处理乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String name=request.getParameter("uname");
        String pwd=request.getParameter("pwd");
        if ("张三".equals(name) && "123".equals(pwd)) {
            Cookie n=new Cookie("name",name);
            Cookie p=new Cookie("pwd",pwd);
            //设置时间
            n.setMaxAge(60*60*24*7);
            p.setMaxAge(60*60*24*7);
            //在客户端生成cookie信息
            response.addCookie(n);
            response.addCookie(p);
            User user=new User(1,"张三","123",20);
            session.setAttribute("user",user);
            response.sendRedirect("success.jsp");
        }else{
            request.setAttribute("message","用户名或密码输入不正确");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    %>

</body>
</html>
