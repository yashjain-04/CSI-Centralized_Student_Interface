<%-- 
    Document   : updateNotification
    Created on : 14 Oct, 2024, 7:59:30 PM
    Author     : ydhup
--%>

<%@page import="dto.NotificationDTO"%>
<%@page import="dao.NotificationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Notifications</title>
    </head>
    <body bgcolor="#E0FFFF">
<!--        <a href="adminHome.jsp">HOME</a>
        <form action="updateNotification.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Enter Notification Number : </strong></td>
                    <td><input type="text" name="number" placeholder="Enter here"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>-->
        
        <%
            String number = request.getParameter("number");
            number = number.substring(7);
            System.out.println(number);
            
            if(number != null  && !number.trim().equals("")){
                NotificationDAO ndao = new NotificationDAO();
                NotificationDTO num = ndao.getNotification(number);
                
                if(number == null){
                    %>
                    <h2>No Record Found For Notification Number : <%=number%></h2>
                    <%
                }
                else{
        %>
        
        <form action="UpdateNotificationServlet" method="post">
            <table border="1" width="100%">
                <tr>
                    <td><strong>Notification number : </strong></td>
                    <td><strong><input type="text" name="number" disabled="disabled" value="<%=number%>"></strong></td>
                    <td><strong><input type="hidden" name="number" value="<%=number%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Notification Title : </strong></td>
                    <td><strong><textarea type="text" name="title" rows="3" cols="140"><%=num.getTitle()%></textarea></strong></td>
                </tr>
                <tr>
                    <td><strong>Notification : </strong></td>
<!--                    <td><strong><input type="text" name="message" value="<%=num.getMessage()%>"></strong></td>-->
                        <td><textarea rows="6" cols="140" name="message"><%=num.getMessage()%></textarea></td>
                </tr>
                <tr>
                    <td><strong>Notification For : </strong></td>
<!--                    <td><strong><input type="text" name="message" value="<%=num.getNoticeFor()%>"></strong></td>-->
                    <td><input type="text" name="noticeFor" value="<%=num.getNoticeFor()%>"></textarea></td>
                </tr>
                <tr>
                    <td><strong>Notification From : </strong></td>
<!--                    <td><strong><input type="text" name="message" value="<%=num.getNoticeFrom()%>"></strong></td>-->
                    <td><input type="text" name="noticeFrom" value="<%=num.getNoticeFrom()%>"></textarea></td>
                </tr>
            </table>
                <input type="submit" value="UPDATE">
        </form>
            <%
                }
            }
            %>
    </body>
</html>