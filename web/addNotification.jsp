<%-- 
    Document   : notification
    Created on : 9 Oct, 2024, 9:25:40 AM
    Author     : ydhup
--%>

<%@page import="dto.HodDTO"%>
<%@page import="dao.HodDAO"%>
<%@page import="dto.FacultyDTO"%>
<%@page import="dao.FacultyDAO"%>
<%@page import="dto.NotificationDTO"%>
<%@page import="dao.NotificationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notification</title>
    </head>
    <body bgcolor="#E0FFFF">
        <%
            String noticeFor = request.getParameter("for");
            String noticeFrom = (String)session.getAttribute("username");
        %>
        <form action="AddNotificationServlet" method="post">
            <table>
                <tr>
                    <td><strong>Add Notification Title : </strong></td>
                </tr>
                <tr>
                    <td><strong><textarea rows="4" cols="30" placeholder="Add Title" name="title"></textarea></strong></td>
                </tr>
                <tr>
                    <td><strong>Add Notification : </strong></td>
                </tr>
                <tr>
                    <td><strong><textarea rows="10" cols="50" placeholder="Add Notification" name="notification"></textarea></strong></td>
                </tr>
                <tr><input type="hidden" name="noticeFor" value=<%=noticeFor%>></tr>
                <tr><input type="hidden" name="noticeFrom" value=<%=noticeFrom%>></tr>
                <tr>
                    <td></td>
                    <td><strong><input type="submit"></strong></td>
                </tr>
            </table>
        </form>
    </body>
</html>
