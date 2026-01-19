<%-- 
    Document   : a
    Created on : Jan 19, 2026, 9:48:43 AM
    Author     : AngDeng
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
            UserDTO u = (UserDTO)session.getAttribute("user");
            if (u!=null){       
        %>
                <h1>Welcome, <%=u.getFullName()%> </h1>
                <a href="MainController?action=logout&">Logout</a>
                <h2>Menu</h2>
                Option 1 <br/>
                Option 2 <br/>
                Option 3 <br/>
        <%  } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
