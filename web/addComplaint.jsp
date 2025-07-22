<%-- 
    Document   : addComplaint
    Created on : 24 Nov, 2024, 5:13:52 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Complaint</title>
    </head>
    <body bgcolor="#E0FFFF">
        <%
            String complaintBy = request.getParameter("complaintBy");
            String complaintTo = request.getParameter("complaintTo");
            System.out.println("Comaplaint by : "+complaintBy);
            System.out.println("Comaplaint to : "+complaintTo);
        %>
        <form action="AddComplaintServlet" method="post">
            <table>
                <tr>
                    <td><strong>Complaint Title : </strong></td>
                </tr>
                <tr>
                    <td><strong><textarea rows="4" cols="30" placeholder="Add Title" name="title"></textarea></strong></td>
                </tr>
                <tr>
                    <td><strong>Complaint : </strong></td>
                </tr>
                <tr>
                    <td><strong><textarea rows="10" cols="50" placeholder="Add Complaint" name="complaint"></textarea></strong></td>
                </tr>
                <tr><input type="hidden" name="complaintBy" value=<%=complaintBy%>></tr>
                <tr><input type="hidden" name="complaintTo" value=<%=complaintTo%>></tr>
                <tr>
                    <td></td>
                    <td><strong><input type="submit" value="Complain"></strong></td>
                </tr>
            </table>
        </form>
    </body>
</html>
