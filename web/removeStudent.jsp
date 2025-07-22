<%-- 
    Document   : removeStudent
    Created on : 2 Oct, 2024, 7:36:30 PM
    Author     : ydhup
--%>

<%@page import="dto.StudentDTO"%>
<%@page import="dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="removeStudent.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Enter Student ID : </strong></td>
                    <td><input type="text" name="id" placeholder="Enter here"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Remove"></td>
                </tr>
            </table>
        </form>
        
        <%
            String id = request.getParameter("id");
            
            if(id != null  && !id.trim().equals("")){
                StudentDAO sDao = new StudentDAO();
                StudentDTO student = sDao.getStudentDetails(id);
                
                if(student == null){
                    %>
                    <h2>No Record Found For <%=id%></h2>
                    <%
                }
                else{
        %>
        
        <h2>Are you sure, you want to remove?</h2>
        
        <form action="RemoveStudentServlet" method="post">
            <table border="1" width="400">
                <tr>
                    <td><strong>Student Id : </strong></td>
                    <td><strong><input type="text" name="id" disabled="disabled" value="<%=id%>"></strong></td>
                    <td><strong><input type="hidden" name="id" value="<%=id%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Student Name : </strong></td>
                    <td><strong><input type="text" name="name" value="<%=student.getStudentName()%>"></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Student Course : </strong></td>
                    <td><strong><input type="text" name="course" value="<%=student.getStudentCourse()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Student Branch : </strong></td>
                    <td><strong><input type="text" name="branch" value="<%=student.getStudentBranch()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Student Year : </strong></td>
                    <td><strong><input type="text" name="year" value="<%=student.getStudentYear()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Student Semester : </strong></td>
                    <td><strong><input type="text" name="semester" value="<%=student.getStudentSemester()%>"></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Student Contact Number : </strong></td>
                    <td><strong><input type="text" name="contact" value="<%=student.getStudentContact()%>"></strong></td>
                </tr>
                <tr>
                    <td><strong>Student City : </strong></td>
                    <td><strong><input type="text" name="city" value="<%=student.getStudentCity()%>"></strong></td>
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
