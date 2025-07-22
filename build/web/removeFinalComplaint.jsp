<%-- 
    Document   : removeFinalComplaint
    Created on : 27 Nov, 2024, 4:02:17 PM
    Author     : ydhup
--%>

<%@page import="dto.ComplaintDTO"%>
<%@page import="dao.ComplaintDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Complaint</title>
    </head>
    <body>
        <%
            String complaintId = request.getParameter("id");
            complaintId = complaintId.substring(7);
            
            ComplaintDAO cdao = new ComplaintDAO();
            ComplaintDTO cdto = cdao.getComplaintDetail(complaintId);
        %>
        <h1>Are you sure, you want to remove?</h1>
        <form action="RemoveComplaintServlet" method="POST">
            <table border="2" width="100%">
                <tbody>
                    <tr>
                        <td><input type="text" value="Complaint Id : "></td>
                        <td><input type="text" disabled="disable" name="id" value="<%=cdto.getId()%>"></td>
                        <td><input type="hidden" name="id" value="<%=cdto.getId()%>"></td>
                    </tr>
                    <tr>
                        <td><input type="text" value="Complaint By : "></td>
                        <td><input type="text" disabled="disable" name="complaintBy" value="<%=cdto.getComplaintBy()%>"></td>
                        <td><input type="hidden" name="complaintBy" value="<%=cdto.getComplaintBy()%>"></td>
                    </tr>
                    <tr>
                        <td><input type="text" value="Complaint To : "></td>
                        <td><input type="text" disabled="disable" name="complaintTo" value="<%=cdto.getComplaintTo()%>"></td>
                        <td><input type="hidden" name="complaintTo" value="<%=cdto.getComplaintTo()%>"></td>
                    </tr>
                    <tr>
                        <td><input type="text" value="Complaint Title : "></td>
                        <td><textarea rows="3" cols="30" name="title"><%=cdto.getTitle()%></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="text" value="Complaint : "></td>
                        <td><textarea rows="5" cols="90" name="complaint"><%=cdto.getComplaint()%></textarea></td>
                    </tr>
                </tbody>
            </table>
            
            <br>
            <input type="submit" value="Remove">
        </form>
    </body>
</html>

