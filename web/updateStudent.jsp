<%-- 
    Document   : updateStudent
    Created on : 2 Oct, 2024, 7:15:13 PM
    Author     : ydhup
--%>

<%@page import="dto.StudentDTO"%>
<%@page import="dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
    </head>
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="updateStudent.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Enter Student Enrollment Number : </strong></td>
                    <td><input type="text" name="Id" placeholder="Enter here"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
        
        <%
            String Id = request.getParameter("Id");
            
            if(Id != null  && !Id.trim().equals("")){
                StudentDAO fDao = new StudentDAO();
                StudentDTO student = fDao.getStudentDetails(Id);
                
                if(student == null){
                    %>
                    <h2>No Record Found For <%=Id%></h2>
                    <%
                }
                else{
        %>
        
        <form action="UpdateStudentServlet" method="post">
            <table border="1" width="350">
                <tr>
                    <td><strong>Student Id : </strong></td>
                    <td><strong><input type="text" name="id" disabled="disabled" value="<%=Id%>"></strong></td>
                    <td><strong><input type="hidden" name="Id" value="<%=Id%>"></strong></td>
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
                <input type="submit" value="UPDATE">
        </form>
            <%
                }
            }
            %>
    </body>
</html>
