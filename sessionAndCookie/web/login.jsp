<%@ page contentType="text/html;charset=UTF-8"
language="java"%>
<%
    String sessionValue=String.valueOf(session.getAttribute("sessionValue"));
    if(!sessionValue.equals("")){
        response.sendRedirect("index.jsp?message=YouNeedToLogoutFirst");
    }

    Cookie[] cookies=request.getCookies();
    String username=null;
    String password=null;

    if(cookie!=null){
    for(int i=0;i<cookies.length;i++){
        if(cookie[i].getName().equals("username")){
            username=cookie[i].getValue();
        }
        if(cookie[i].getName().equals("password")){
            password=cookie[i].getValue();
        }
    }
    }
%>


<html>
<head>
</head>
<body>
<center>
<h1> User login</h1>
<form action="_login.jsp" method="post">
Username<input type="text" name="username" value="<%=username==null?"":username"%>"> </br>
Password <input type="password" name="password" value="<%=password==null?"":password"%>">
<input type="checkbox" name="remember" value="true">Remember me
<input type="submit" value="LOGIN">
</form>
</center>
</body>
</html>
