<%--
  Created by IntelliJ IDEA.
  User: 26619
  Date: 2020/3/3
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    if ("nuonuo".equals(name) && "123".equals(pwd)) {
        response.sendRedirect("mysuccess.jsp");
    }else{
        request.setAttribute("message","用户名和密码不正确");
        request.getRequestDispatcher("mylogin.jsp").forward(request,response);
    }
%>
<%--<%=name%>--%>
<%--<%=pwd%>--%>

</body>
</html>
