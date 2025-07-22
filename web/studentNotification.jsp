<%-- 
    Document   : studentNotification
    Created on : 24 Nov, 2024, 2:41:02 PM
    Author     : ydhup
--%>

<%@page import="dto.HodDTO"%>
<%@page import="dao.HodDAO"%>
<%@page import="dto.FacultyDTO"%>
<%@page import="dao.FacultyDAO"%>
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
    <body bgcolor="#EEEDEB">
        <h1>Notifications</h1>
        <%
        NotificationDAO dao = new NotificationDAO();
        ArrayList<NotificationDTO> allNotifications = dao.getAllNotifications();
        Iterator<NotificationDTO> i = allNotifications.iterator();
        %>
        
        <table border="2" width="100%">
            <thead>
                <tr>
                    <td><strong>ID</strong></td>
                    <td><strong>TITLE</strong></td>
                    <td><strong>NOTIFICATION</strong></td>
                    <td><strong>NOTIFICATION FROM</strong></td>
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
                    <td><textarea disabled="disable" rows="5" cols="30"> <%=ndto.getTitle()%></textarea></td>
                    <td><textarea disabled="disable" rows="5" cols="90"> <%=ndto.getMessage()%></textarea></td>
                    <%
                        String noticeFrom = ndto.getNoticeFrom();
                        System.out.println(noticeFrom);
                        if(noticeFrom  != null){
                            if(noticeFrom.charAt(0) == '1'){
                                FacultyDAO fdao = new FacultyDAO();
                                FacultyDTO fdto = fdao.getFacultyDetails(noticeFrom);
                                noticeFrom = fdto.getFacultyName();
                            }
                            else if(noticeFrom.equals("221230")){
                                noticeFrom = "Admin-YashJain";
                            }
                            else{
                                HodDAO hdao = new HodDAO();
                                HodDTO hdto = hdao.getHodDetails(noticeFrom);
                                noticeFrom = hdto.getHodName();
                            }
                        }
                    %>
                    <td><%=noticeFrom%></td>
                </tr>
            </tbody>
            <%
                }
            }
            %>
        </table>
    </body>
</html>
