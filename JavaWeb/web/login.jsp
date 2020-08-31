
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>

<%

    for(int i=0;i<10;i++){
      out.print("<li>"+i+"</li>");

    }
%>
 <%!
    public int show(){
        return 10;
     }
%>
    <%=show()%>
</ul>

<%out.print("hello.jsp"); %>

</body>
</html>
