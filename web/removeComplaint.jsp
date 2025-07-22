<%-- 
    Document   : removeComplaint
    Created on : 27 Nov, 2024, 3:59:26 PM
    Author     : ydhup
--%>

<%@page import="java.util.Iterator"%>
<%@page import="dto.ComplaintDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ComplaintDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Complaint</title>
    </head>
    <body bgcolor="#E0FFFF">
        <h1>All Complaints...</h1>
        <%
            ComplaintDAO cdao = new ComplaintDAO();
            ArrayList<ComplaintDTO> complaints = cdao.getAllComplaintDetails();
            Iterator<ComplaintDTO> i = complaints.iterator();
        %>
        <form action="removeFinalComplaint.jsp" method="post">
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
                    ComplaintDTO cdto = i.next();
                %>
                <tbody>
                    <tr>
                        <td><input type="text" name="complaintId" value="<%=cdto.getId()%>"></td>
                        <td><textarea rows="2" cols="120" disabled="disable"><%=cdto.getTitle()%></textarea></td>
                        <td><input type="submit" name="id" value="Remove <%=cdto.getId()%>"></td>
                    </tr>
                </tbody>
                <%
                    }
                %>
            </table>
        </form>
        
    </body>
</html>
