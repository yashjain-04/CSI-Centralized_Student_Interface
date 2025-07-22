<%-- 
    Document   : studentRegistration
    Created on : 2 Oct, 2024, 4:37:11 PM
    Author     : ydhup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <style>
            body {
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                background: #f0faff;
              }
              
              #main_card{
                  background-color: powderblue;
                  padding: 40px;
                  border-radius: 10%;
              }
              #submit_button{
                  align-items: center;
                  background-color: cornflowerblue;
                  height: 5vh;
                  width: 10vw;
                  border-radius: 5px;
              }
        </style>
    </head>
    <body>
        <div id="main_card">
            <form action="StudentCheckerServlet" method="post">
                <table height="400" width="450">
                    <tr>
                        <td><strong>Enter Your Id : </strong></td>
                        <td><strong><input type="text" name="studentId" placeholder="Enter ID"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your Name : </strong></td>
                        <td><strong><input type="text" name="name" placeholder="Enter Name"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Select Your Course : </strong></td>
                        <td>
                            <select name="course">
                                <option>BTech</option>
                                <option>BE</option>
                                <option>Bsc</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your Branch : </strong></td>
                        <td><strong><input type="text" name="branch" placeholder="Enter Branch"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your Year of Study : </strong></td>
                        <td><strong><input type="text" name="year" placeholder="Enter year"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your Current Semester : </strong></td>
                        <td><strong><input type="text" name="semester" placeholder="Enter Semester"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your Contact Number : </strong></td>
                        <td><strong><input type="text" name="contact" placeholder="Enter Number"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your City : </strong></td>
                        <td><strong><input type="text" name="city" placeholder="Enter City"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Enter Your Password : </strong></td>
                        <td><strong><input type="password" name="password" placeholder="Enter Password"></strong></td>
                    </tr>
                    <tr>
                        <td><strong>Confirm Password : </strong></td>
                        <td><strong><input type="password" name="confirmPassword" placeholder="Confirm Password"></strong></td>
                    </tr>
                    <tr>
                        <td><strong><input type="hidden" name="role" value="Student"></strong></td>
                    </tr>
                </table>
                <br>
                    <input type="submit" value="Register" id="submit_button">
            </form>
        </div>
        
    </body>
</html>
