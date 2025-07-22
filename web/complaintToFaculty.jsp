<%-- 
    Document   : complaintToFaculty
    Created on : 27 Nov, 2024, 10:12:45 AM
    Author     : ydhup
--%>

<%@page import="java.util.Iterator"%>
<%@page import="dto.FacultyDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.FacultyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint To</title>
    </head>
    <body bgcolor="#E0FFFF">
        <%
        String complaintBy = (String)session.getAttribute("username");
        %>
        <h1>Complaint To...?</h1>
        <br>
        <hr>
        <%
            FacultyDAO fdao = new FacultyDAO();
            ArrayList<FacultyDTO> faculties = fdao.getAllFacultiesDetails();
            Iterator<FacultyDTO> i = faculties.iterator();
            %>
            
            <h3>Faculties</h3>
            <table border="2" WIDTH="100%">
                <thead>
                    <tr>
                        <td><strong>ID.</strong></td>
                        <td><strong>NAME</strong></td>
                        <td><strong>DEPARTMENT</strong></td>
                    </tr>
                </thead>

                <%
                    while(i.hasNext()){
                        FacultyDTO fdto = i.next();
                %>

                <tbody>
                    <form action="addComplaint.jsp" method="POST">
                        <tr>
                            <td><%=fdto.getFacultyID()%></td>
                            <td><%=fdto.getFacultyName()%></td>
                            <td><%=fdto.getFacultyDepartment()%></td>
                            <td><input type="hidden" name="complaintBy" value="<%=complaintBy%>"></td>
                            <td><input type="hidden" name="complaintTo" value="<%=fdto.getFacultyID()%>"></td>
                            <td><input type="submit" value="Complain"></td>
                        </tr>
                    </form>
                </tbody>

                <%
                    }
                %>
            </table>
    </body>
</html>
