<%-- 
    Document   : facultyHomeComplaint
    Created on : 24 Nov, 2024, 6:27:33 PM
    Author     : ydhup
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.ComplaintDTO"%>
<%@page import="dao.ComplaintDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaints</title>
    </head>
    <body bgcolor="#EEEDEB">
        <h2>Raise a Complaint : </h2>
        <a href="complaintToHod.jsp" style="text-decoration: none; color:black "><strong>Complaint</strong><i class="fa-solid fa-circle-exclamation"></i></a>
        <br>
        <br>
        <br>
        <hr>
        
        <%
        String myId = (String)session.getAttribute("username");
        ComplaintDAO cdao = new ComplaintDAO();
        ArrayList<ComplaintDTO> complaints = cdao.getAllComplaintDetails();
        Iterator<ComplaintDTO> i = complaints.iterator();
        %>
        
        <form action="updateNotification.jsp" method="POST">
            <h2>Complaints From Students : </h2>
            <br>
            <table border="2" width="100%">
                <thead>
                    <tr>
                        <td><strong>ID</strong></td>
                        <td><strong>COMPLAINT FROM</strong></td>
                        <td><strong>TITLE</strong></td>
                        <td><strong>COMPLAINT</strong></td>
                    </tr>
                </thead>

                <%
                while(i.hasNext()){
                    ComplaintDTO cdto = i.next();
                    if(cdto.getComplaintTo().equals(myId)){

                %>
                <tbody>
                    <tr>
                        <td><%=cdto.getId()%></td>
                        <td><%=cdto.getComplaintBy()%></td>
<!--                        <td><%=cdto.getTitle()%></td>
                        <td><%=cdto.getComplaint()%></td>-->
                        <td><textarea rows="2" cols="50" disabled="disabled"><%=cdto.getTitle()%></textarea></td>
                        <td><textarea rows="4" cols="90" disabled="disabled"><%=cdto.getComplaint()%></textarea></td>
                    </tr>
                </tbody>
                <%
                    }
                }
                %>
            </table>
        </form>
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
