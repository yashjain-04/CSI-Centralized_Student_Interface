<%-- 
    Document   : viewComplaints
    Created on : 27 Nov, 2024, 1:02:25 PM
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
        <title>JSP Page</title>
    </head>
    <body bgcolor="#E0FFFF">
        <h1>All Complaints...</h1>
        <%
            ComplaintDAO cdao = new ComplaintDAO();
            ArrayList<ComplaintDTO> complaints = cdao.getAllComplaintDetails();
            Iterator<ComplaintDTO> i = complaints.iterator();
        %>
        
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
            %>
            <tbody>
                <tr>
                    <td><%=cdto.getId()%></td>
                    <td><%=cdto.getComplaintBy()%></td>
                    <td><textarea rows="3" cols="30" disabled="disabled"><%=cdto.getTitle()%></textarea></td>
                    <td><textarea rows="5" cols="90" disabled="disabled"><%=cdto.getComplaint()%></textarea></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
    </body>
</html>
