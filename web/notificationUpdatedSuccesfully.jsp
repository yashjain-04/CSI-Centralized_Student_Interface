<%-- 
    Document   : notificationUpdatedSuccesfully
    Created on : 27 Nov, 2024, 12:50:08 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Notification Updated Successfully!!</h1>
        <%
            String user = (String)session.getAttribute("username");
            
            if(user.equals("221230")){
        %>
                <a href="adminHome.jsp">Home</a>
        <%
            }
        else if(user.charAt(0) == '1'){
        %>
                <a href="facultyHome.jsp">Home</a>
        <%
        }
        else{
        %>
                <a href="hodHome.jsp">Home</a>
        <%
        }
        %>
    </body>
</html>
