<%-- 
    Document   : hodNotification
    Created on : 24 Nov, 2024, 2:51:59 PM
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
    <body bgcolor="#EEEDEB">
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
                    <td><strong>NOTIFICATION FOR</strong></td>
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
                    <td><%=ndto.getMessage()%></td>
                    <td><%=ndto.getNoticeFor()%></td>
                </tr>
            </tbody>
            
            <%
                }
            %>
        </table> 
        <br>
        <a href="notificationFor.jsp">Add Notification</a>
        <a href="updateFromNotification.jsp">Update Notification</a>
        <a href="removeFromNotification.jsp">Remove Notification</a>
    </body>
    
    <style>
        a{
            color: white;
            background-color: #B43F3F;
            border: 2px solid black;
            border-radius: 4px;
            text-decoration: none;
            margin: 20px;
            padding: 5px;
        }
    </style>
</html>
