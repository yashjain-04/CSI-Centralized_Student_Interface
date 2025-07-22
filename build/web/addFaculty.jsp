<%-- 
    Document   : addFaculty
    Created on : 24 Sep, 2024, 10:51:20 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD</title>
    </head>
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="AddFacultyServlet" method="post">
            <table>
                <tr>
                    <td><strong>Enter Faculty ID : </strong></td>
                    <td><input type="text" name="facultyID" placeholder="Enter ID here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Faculty Name : </strong></td>
                    <td><input type="text" name="name" placeholder="Enter name here"></td>
                </tr>
                <tr>
                    <td><strong>Enter Faculty Department : </strong></td>
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
