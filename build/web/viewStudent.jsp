<%-- 
    Document   : viewStudent
    Created on : 2 Oct, 2024, 6:45:08 PM
    Author     : ydhup
--%>

<%@page import="dto.StudentDTO"%>
<%@page import="dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Student</title>
    </head>
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="viewStudent.jsp" method="post">
            <table>
                <tr>
                    <td><strong>Enter Enrollment Number</strong></td>
                    <td><input type="text" name="id" placeholder="Enter number here"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"</td>
                </tr>
            </table>
        </form>
        
        <%
            String id = request.getParameter("id");
            
            if(id != null && !id.trim().equals("")){
                StudentDAO sdao = new StudentDAO();
                StudentDTO student = sdao.getStudentDetails(id);
                
                if(student == null){
                    %>
                    <h2>No Records Found for <%=id%>!</h2>
                    <%
                }
                else{
        %>
        <form>
            <table border="1" width="400">
                <tr>
                    <td><strong>Student Id : </strong></td>
                    <td><strong><input type="text" name="id" disabled="disabled" value="<%=id%>"></strong></td>
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
        </form>
            <%
                }
            }
            %>
    </body>
</html>
