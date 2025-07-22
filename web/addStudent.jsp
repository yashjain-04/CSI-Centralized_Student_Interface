<%-- 
    Document   : addStudent
    Created on : 2 Oct, 2024, 6:23:07 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD Student</title>
    </head>
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="AddStudentServlet" method="post">
            <table>
                <tr>
                    <td><strong>Enter Student ID : </strong></td>
                    <td><input type="text" name="studentID" placeholder="Enter ID here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Student Name : </strong></td>
                    <td><input type="text" name="name" placeholder="Enter name here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Student Course : </strong></td>
                    <td><input type="text" name="course" placeholder="Enter course here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Student Branch : </strong></td>
                    <td><input type="text" name="branch" placeholder="Enter branch here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Student Year : </strong></td>
                    <td><input type="text" name="year" placeholder="Enter year here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Student Semester : </strong></td>
                    <td><input type="text" name="semester" placeholder="Enter semester here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Faculty Contact Number : </strong></td>
                    <td><input type="text" name="contact" placeholder="Enter contact number here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Faculty City : </strong></td>
                    <td><input type="text" name="city" placeholder="Enter city here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Password : </strong></td>
                    <td><input type="password" name="password" placeholder="Enter password here"></td>
                </tr>
                <tr>
                    <td><strong>Confirm Password : </strong></td>
                    <td><input type="password" name="confirmPassword" placeholder="Enter password again"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="reset">        
                        <input type="submit">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
