<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String sessionValue=String.valueOf(session.getAttribute("sessionValue"));
    out.println(sessionValue);
    if(sessionValue.equals("null")){
        response.sendRedirect("login.jsp?message=you need to login first");
    }

%>
<html>
<head>
    <title> $this$</title>
</head>
<body>
    <form action="insert.jsp" method="post">
    username <input type="text" name="username"><br/>
    password <input type="text" name="password"><br/>
    phone number <input type="text" name="phonenumber"><br/>
    value   <input type="submit" value=""><br/>
    </form>
    <a href ="logout.jsp">Logout</a>
</body>
</html>
