<%-- 
    Document   : viewProfile
    Created on : 27 Nov, 2024, 6:28:05 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Profile</title>
    </head>
    <body>
        <%
            String user = (String)session.getAttribute("username");
            if(user.charAt(0) == '0'){
                response.sendRedirect("studentProfile.jsp");
            }
            else if(user.charAt(0) == '1'){
                response.sendRedirect("facultyProfile.jsp");
            }
            else{
                response.sendRedirect("hodProfile.jsp");
            }
        %>
    </body>
</html>
