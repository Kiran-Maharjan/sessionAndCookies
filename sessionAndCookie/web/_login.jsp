<%@page import="java.net.CookieHandler"

%>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    boolean remember=Boolean.parseBoolean(request.getParameter("remember"));

    if(username.equals("test")
    && password.equals("test")){
        session.setAttribute("sessionValue",username);

        if(remember==true){
            Cookie usernameCookie=new Cookie("username",username);
            Cookie passwordCookie=new Cookie("password",password);

            usernameCookie.setMaxAge(10);
            passwordCookie.setMaxAge(10);

            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);

        response.sendRedirect("index.jsp?msg=cookie added");
        }else{
        response.sendRedirect("index.jsp");
        }

    }else{
        response.sendRedirect("login.jsp?msg=Invalid username or password");
    }
%>