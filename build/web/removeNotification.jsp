<%-- 
    Document   : removeNotification
    Created on : 20 Oct, 2024, 4:09:34 PM
    Author     : ydhup
--%>

<%@page import="dto.NotificationDTO"%>
<%@page import="dao.NotificationDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Notifications</title>
    </head>
    <body bgcolor="#E0FFFF">
        
        <%
            String removeBy = (String)session.getAttribute("username");
            
            String number = request.getParameter("number");
            number = number.substring(7);
            System.out.println(number);
            
            if(number != null  && !number.trim().equals("")){
                NotificationDAO ndao = new NotificationDAO();
                NotificationDTO num = ndao.getNotification(number);
                
                if(num == null){
                    %>
                    <h2>No Record Found For Notification Number : <%=number%></h2>
                    <%
                }
                else{
        %>
        
        <h2>Are you sure, you want to remove?</h2>
        <form action="RemoveNotificationServlet" method="post">
            <table border="1" width="100%">
                <tr>
                    <td><strong>Notification number : </strong></td>
                    <td><strong><input type="text" name="number" disabled="disabled" value="<%=number%>"></strong></td>
                    <td><strong><input type="hidden" name="number" value="<%=number%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Notification Title : </strong></td>
                    <td><strong><textarea type="text" rows="3" cols="140" name="title"><%=num.getTitle()%></textarea></strong></td>
                </tr>
                <tr>
                    <td><strong>Notification : </strong></td>
                    <td><strong><textarea type="text" rows="6" cols="140" name="message" ><%=num.getMessage()%></textarea>></strong></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="noticeFrom" value="<%=num.getNoticeFrom()%>"></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="removeBy" value="<%=removeBy%>"></td>
                </tr>
            </table>
                <input type="submit" value="Remove">
        </form>
            <%
                }
            }
            %>
    </body>
</html>