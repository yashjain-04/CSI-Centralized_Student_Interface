<%-- 
    Document   : facultyNotification
    Created on : 24 Nov, 2024, 2:49:09 PM
    Author     : ydhup
--%>

<%@page import="dto.HodDTO"%>
<%@page import="dao.HodDAO"%>
<%@page import="dto.FacultyDTO"%>
<%@page import="dao.FacultyDAO"%>
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
        <h1>Notifications For Faculties</h1>
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
                if(ndto.getNoticeFor().equals("Faculty") || ndto.getNoticeFor().equals("All")){
            %>
            <tbody>
                <tr>
                    <td><%=ndto.getNumber()%></td>
                    <td><textarea disabled="disable" rows="5" cols="30"> <%=ndto.getTitle()%></textarea></td>
                    <td><textarea disabled="disable" rows="5" cols="90"> <%=ndto.getMessage()%></textarea></td>
                    <%
                        String noticeFrom = ndto.getNoticeFrom();
                        if(noticeFrom.equals("221230")){
                            noticeFrom = "Admin-YashJain";
                        }
                        else{
                            HodDAO hdao = new HodDAO();
                            HodDTO dto = hdao.getHodDetails(noticeFrom);
                            noticeFrom = dto.getHodName();
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
        
        <br>
        <hr>
        <br>
        
        <h1>Notifications For Students</h1>
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
            
            Iterator<NotificationDTO> i2 = allNotifications.iterator();
            while(i2.hasNext()){
                NotificationDTO ndto = i2.next();
                if(ndto.getNoticeFor().equals("Student") || ndto.getNoticeFor().equals("All")){
            %>
            <tbody>
                <tr>
                    <td><%=ndto.getNumber()%></td>
                    <td><textarea disabled="disable" rows="5" cols="30"> <%=ndto.getTitle()%></textarea></td>
                    <td><textarea disabled="disable" rows="5" cols="90"> <%=ndto.getMessage()%></textarea></td>
                    <%
                        String noticeFrom = ndto.getNoticeFrom();
                        
                        System.out.print("--> "+noticeFrom);
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
        <br>
        <a href="notificationForStudent.jsp">Add Notification</a>
        <a href="updateStudentNotification.jsp">Update Notification</a>
        <a href="removeStudentNotification.jsp">Remove Notification</a>
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

