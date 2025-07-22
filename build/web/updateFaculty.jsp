<%-- 
    Document   : updateFaculty
    Created on : 24 Sep, 2024, 11:45:50 PM
    Author     : ydhup
--%>

<%@page import="dto.FacultyDTO"%>
<%@page import="dao.FacultyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Faculty</title>
    </head>
    
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //response.setHeader("Pragma", "no-chache"); // HTTP 1.0
        //response.setHeader("Expires", "0");  // Proxy Server
    %>
    
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="updateFaculty.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Enter Faculty ID : </strong></td>
                    <td><input type="text" name="facultyId" placeholder="Enter here"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
        
        <%
            String facultyId = request.getParameter("facultyId");
            
            if(facultyId != null  && !facultyId.trim().equals("")){
                FacultyDAO fDao = new FacultyDAO();
                FacultyDTO faculty = fDao.getFacultyDetails(facultyId);
                
                if(faculty == null){
                    %>
                    <h2>No Record Found For <%=facultyId%></h2>
                    <%
                }
                else{
        %>
        
        <form action="UpdateFacultyServlet" method="post">
            <table border="1" width="350">
                <tr>
                    <td><strong>Faculty Id : </strong></td>
                    <td><strong><input type="text" name="id" disabled="disabled" value="<%=facultyId%>"></strong></td>
                    <td><strong><input type="hidden" name="facultyId" value="<%=facultyId%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Faculty Name : </strong></td>
                    <td><strong><input type="text" name="name" value="<%=faculty.getFacultyName()%>"></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty Department : </strong></td>
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
                    <td><strong>Faculty Contact Number : </strong></td>
                    <td><strong><input type="text" name="contact" value="<%=faculty.getFacultyContact()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Faculty City : </strong></td>
                    <td><strong><input type="text" name="city" value="<%=faculty.getFacultyCity()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Faculty Role : </strong></td>
                    <td><strong><input type="text" name="role" value="<%=faculty.getRole()%>"></strong></td>
                </tr>
            </table>
                <input type="submit" value="UPDATE">
        </form>
            <%
                }
            }
            %>
    </body>
</html>
