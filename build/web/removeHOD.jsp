<%-- 
    Document   : removeHOD
    Created on : 5 Oct, 2024, 6:31:36 PM
    Author     : ydhup
--%>

<%@page import="dto.HodDTO"%>
<%@page import="dao.HodDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove HOD</title>
    </head>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //response.setHeader("Pragma", "no-chache"); // HTTP 1.0
        //response.setHeader("Expires", "0");  // Proxy Server
    %>
    
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="removeHOD.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Enter HOD ID : </strong></td>
                    <td><input type="text" name="HodId" placeholder="Enter here"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Remove"></td>
                </tr>
            </table>
        </form>
        
        <%
            String HodId = request.getParameter("HodId");
            
            if(HodId != null  && !HodId.trim().equals("")){
                HodDAO hDao = new HodDAO();
                HodDTO hod = hDao.getHodDetails(HodId);
                
                if(hod == null){
                    %>
                    <h2>No Record Found For <%=HodId%></h2>
                    <%
                }
                else{
        %>
        
        <h2>Are you sure, you want to remove?</h2>
        
        <form action="RemoveHodServlet" method="post">
            <table border="1" width="350">
                <tr>
                    <td><strong>HOD Id : </strong></td>
                    <td><strong><input type="text" name="id" disabled="disabled" value="<%=HodId%>"></strong></td>
                    <td><strong><input type="hidden" name="id" value="<%=HodId%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>HOD Name : </strong></td>
                    <td><strong><input type="text" name="name" value="<%=hod.getHodName()%>"></strong></td>
                </tr>
                
                <tr>
                    <td><strong>HOD Department : </strong></td>
                    <td>
                        <select name="department">
                            <option>CSE</option>
                            <option>IT</option>
                            <option>AIML</option>
                            <option>IOT</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><strong>HOD Contact Number : </strong></td>
                    <td><strong><input type="text" name="contact" value="<%=hod.getHodContact()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>HOD City : </strong></td>
                    <td><strong><input type="text" name="city" value="<%=hod.getHodCity()%>"></strong></td>
                </tr>
            </table>
            
            <input type="submit" value="Yes, Remove!">
        </form>
            <%
                }
            }
            %>
    </body>
</html>
