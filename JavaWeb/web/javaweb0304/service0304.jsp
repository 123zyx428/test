<%@ page import="javaweb0302.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>验证信息</title>
</head>
<body>
    <%

        //解决乱码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String name=request.getParameter("username");
        String pwd=request.getParameter("pwd");


        if("张三".equals(name)&&"123".equals(pwd)){
            //登录成功，把账号，密码存储在cookie中
            Cookie n=new Cookie("name",name);
            Cookie p=new Cookie("pwd",pwd);
            //设置Cookie时间
            n.setMaxAge(60*60*24*7);
            p.setMaxAge(60*60*24*7);
            //添加响应头（把cookie信息存储在客户端）
            response.addCookie(n);
            response.addCookie(p);
            //登录成功时，将登录用户的信息封装成对象，存储到当前对话里
            User u=new User(1,"张三","123",20);
            session.setAttribute("user",u);
            response.sendRedirect("success.jsp");
         }
    %>
<%=name%>
<br>
<%--您是第<%=count%>个访问本网站的用户--%>
</body>
</html>
