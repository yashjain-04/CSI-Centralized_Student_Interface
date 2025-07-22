<%-- 
    Document   : updateFromNotification
    Created on : 24 Nov, 2024, 1:41:24 PM
    Author     : ydhup
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.NotificationDTO"%>
<%@page import="dao.NotificationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notifications</title>
    </head>
    <body bgcolor="#E0FFFF">
        <h1>Notifications...</h1>
        <%
        NotificationDAO dao = new NotificationDAO();
        ArrayList<NotificationDTO> allNotifications = dao.getAllNotifications();
        Iterator<NotificationDTO> i = allNotifications.iterator();
        %>
        
        <form action="updateNotification.jsp" method="POST">
            <table border="2" width="100%">
                <thead>
                    <tr>
                        <td><strong>ID</strong></td>
                        <td><strong>TITLE</strong></td>
                        <td><strong>UPDATION</strong></td>
                    </tr>
                </thead>

                <%
                while(i.hasNext()){
                    NotificationDTO ndto = i.next();
                %>
                <tbody>
                    <tr>
                        <td><%=ndto.getNumber()%></td>
                        <td><%=ndto.getTitle()%></td>
                        <td><input type="submit" name="number" value="Update <%=ndto.getNumber()%>" placeholder="Update"></td>
                    </tr>
                </tbody>
                <%
                }
                %>
            </table>
        </form>
    </body>
</html>
