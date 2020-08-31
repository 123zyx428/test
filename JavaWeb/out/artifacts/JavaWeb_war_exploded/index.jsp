<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/3
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

<%
    String name=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    if("zhangsan".equals(name)&&"123".equals(pwd)){
        response.sendRedirect("success.jsp");//重定向
    }else{
        request.setAttribute("message","用户名或密码不正确");
//        response.sendRedirect("login1.jsp");//跳转不携带信息
        //转发
        request.getRequestDispatcher("login1.jsp").forward(request,response);
    }
//    String sex=request.getParameter("sex");
//    String[] hobby=request.getParameterValues("hobby");
//    String str=String.join(",",hobby);//将字符串子数组按指定分隔符进行拼接

%>
用户名：  <%=name%><br>
密码：    <%=pwd%><br>
<%--性别：    <%=sex%><br>--%>
<%--爱好：    <%=str%><br>--%>
  </body>
</html>
