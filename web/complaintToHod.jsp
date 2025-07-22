<%-- 
    Document   : complaintToHod
    Created on : 24 Nov, 2024, 5:53:10 PM
    Author     : ydhup
--%>

<%@page import="java.util.Iterator"%>
<%@page import="dto.HodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.HodDAO"%>
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
            HodDAO hdao = new HodDAO();
            ArrayList<HodDTO> hods = hdao.getAllHodsDetails();
            Iterator<HodDTO> hodi = hods.iterator();
            %>
            
            <h3>Hods</h3>
            <table border="2" WIDTH="100%">
                <thead>
                    <tr>
                        <td><strong>ID.</strong></td>
                        <td><strong>NAME</strong></td>
                        <td><strong>DEPARTMENT</strong></td>
                    </tr>
                </thead>

                <%
                    while(hodi.hasNext()){
                        HodDTO hdto = hodi.next();
                %>

                <tbody>
                    <form action="addComplaint.jsp" method="POST">
                        <tr>
                            <td><%=hdto.getHodId()%></td>
                            <td><%=hdto.getHodName()%></td>
                            <td><%=hdto.getHodDepartment()%></td>
                            <td><input type="hidden" name="complaintBy" value="<%=complaintBy%>"></td>
                            <td><input type="hidden" name="complaintTo" value="<%=hdto.getHodId()%>"></td>
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
