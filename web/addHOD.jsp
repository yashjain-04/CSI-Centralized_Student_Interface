<%-- 
    Document   : addHOD
    Created on : 4 Oct, 2024, 6:57:46 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add HOD</title>
    </head>
    <body>
        <a href="adminHome.jsp">HOME</a>
        <form action="AddHODServlet" method="post">
            <table>
                <tr>
                    <td><strong>Enter HOD ID : </strong></td>
                    <td><input type="text" name="id" placeholder="Enter ID here"></td>
                </tr>
                <tr>
                    <td><strong>Enter HOD Name : </strong></td>
                    <td><input type="text" name="name" placeholder="Enter name here"></td>
                </tr>
                <tr>
                    <td><strong>Select HOD Department : </strong></td>
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
                    <td><strong>Enter HOD Contact Number : </strong></td>
                    <td><input type="text" name="contact" placeholder="Enter contact number here"></td>
                </tr>
                <tr>
                    <td><strong>Enter HOD City : </strong></td>
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
