<%-- 
    Document   : removeStudentNotification
    Created on : 24 Nov, 2024, 4:09:34 PM
    Author     : ydhup
--%>

<%@page import="java.util.Iterator"%>
<%@page import="dto.NotificationDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.NotificationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notifications</title>
    </head>
    <body bgcolor="#E0FFFF">
        <h1>Notifications</h1>
        <%
        NotificationDAO dao = new NotificationDAO();
        ArrayList<NotificationDTO> notifications = dao.getAllNotifications();
        Iterator<NotificationDTO> i = notifications.iterator();
        %>
        <form action="removeNotification.jsp" method="POST">
            <table border="2" width="100%">
                <thead>
                    <tr>
                        <td><strong>ID</strong></td>
                        <td><strong>TITLE</strong></td>
                        <td><strong>REMOVAL</strong></td>
                    </tr>
                </thead>
                
                <%
                    while(i.hasNext()){
                        NotificationDTO ndto = i.next();
                        if(ndto.getNoticeFor().equals("Student") || ndto.getNoticeFor().equals("All")){
                            
                %>
                <tbody>
                    <tr>
                        <td><%=ndto.getNumber()%></td>
                        <td><%=ndto.getTitle()%></td>
                        <td><input type="submit" name="number" value="Remove <%=ndto.getNumber()%>"></td>
                    </tr>
                </tbody>
                
                <%
                        }
                }
                %>
            </table>
        </form>
    </body>
</html>
