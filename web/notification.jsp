<%-- 
    Document   : notification
    Created on : 11 Oct, 2024, 6:56:21 PM
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
            NotificationDAO ndao = new NotificationDAO();
            ArrayList<NotificationDTO> notifications = ndao.getAllNotifications();
            Iterator<NotificationDTO> i = notifications.iterator();
        %>
        <table border="2" WIDTH="100%">
            <thead>
                <tr>
                    <td><strong>ID.</strong></td>
                    <td><strong>TITLE</strong></td>
                    <td><strong>NOTIFICATION</strong></td>
                    <td><strong>NOTIFICATION FROM</strong></td>
                </tr>
            </thead>
            
            <%
                while(i.hasNext()){
                    NotificationDTO ndto = i.next();
            %>
            
            <tbody>
                <tr>
                    <td><%=ndto.getNumber()%></td>
                    <td><textarea disabled="disable" rows="5" cols="30"> <%=ndto.getTitle()%></textarea></td>
                    <td><textarea disabled="disable" rows="5" cols="90"> <%=ndto.getMessage()%></textarea></td>
                    <td><%=ndto.getNoticeFrom()%></td>
                </tr>
            </tbody>
            
            <%
                }
            %>
        </table>
    </body>
</html>
