<%-- 
    Document   : adminSignOut
    Created on : 28 Sep, 2024, 6:30:26 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Out</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("login.html");
        %>
    </body>
</html>



