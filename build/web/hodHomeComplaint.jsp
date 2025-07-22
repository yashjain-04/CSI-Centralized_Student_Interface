<%-- 
    Document   : hodHomeComplaint
    Created on : 24 Nov, 2024, 7:14:52 PM
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
        <%
        String myId = (String)session.getAttribute("username");
        ComplaintDAO cdao = new ComplaintDAO();
        ArrayList<ComplaintDTO> complaints = cdao.getAllComplaintDetails();
        Iterator<ComplaintDTO> i = complaints.iterator();
        int studentComplaintCount = 0;
        %>
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
                    if(cdto.getComplaintTo().equals(myId) && cdto.getComplaintBy().charAt(0) == '0'){
                        studentComplaintCount++;
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
                if(studentComplaintCount == 0){
                %>
                <tr>
                    <td><h2>No Complaints From Students...</h2></td>
                </tr>
                <%
                }
                %>
            </table>
            
            <br>
            <hr>
            <br>
            
            <%
            Iterator<ComplaintDTO> i2 = complaints.iterator();
            int facultyComplaintCount = 0;
            %>
            
            <h2>Complaints From Faculties : </h2>
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
                while(i2.hasNext()){
                    ComplaintDTO cdto = i2.next();
                    if(cdto.getComplaintTo().equals(myId) && cdto.getComplaintBy().charAt(0) == '1'){
                        facultyComplaintCount++;
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
                if(facultyComplaintCount == 0){
                %>
                    <tr>
                        <td><h2>No Complaints From Faculties...</h2><td>
                    </tr>
                <%
                }
                %>
                
            </table>
    </body>
    
    <style>
        a{
            text-decoration: none;
            color: black;
            border: 2px solid black;
            border-radius: 5px;
            margin: 20px;
            padding: 5px;
            background-color: cornflowerblue;
        }
    </style>
</html>
