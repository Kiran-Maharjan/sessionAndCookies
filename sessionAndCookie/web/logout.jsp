<%
    session.invalidate();
    session.remove("sessionName");
    response.sendRedirect("login.jsp");
%>