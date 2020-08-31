<%@ page import="java.util.ArrayList" %>
<%@ page import="javaweb0302.User" %>
<%@ page import="java.util.List" %>
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
//    for(int i=0;i<list.size();i++){
//        request.setAttribute("list"+i,list.get(i));
//    }
    request.setAttribute("users",list);
    //携带信息转发
    request.getRequestDispatcher("user.jsp").forward(request,response);
%>
</body>
</html>
