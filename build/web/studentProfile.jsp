<%-- 
    Document   : studentProfile
    Created on : 27 Nov, 2024, 7:15:10 PM
    Author     : ydhup
--%>

<%@page import="dto.StudentDTO"%>
<%@page import="dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
    </head>
    <body>
        <%
            String id = (String)session.getAttribute("username");
            
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
        <h1>Profile Details...</h1>
        <div id="outer_card">
            <table width="100%">
                <tr>
                    <td><strong>Your Id : </strong></td>
                    <td><strong><%=id%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Name : </strong></td>
                    <td><strong><%=student.getStudentName()%></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Your Course : </strong></td>
                    <td><strong><%=student.getStudentCourse()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Branch : </strong></td>
                    <td><strong><%=student.getStudentBranch()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Year : </strong></td>
                    <td><strong><%=student.getStudentYear()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Semester : </strong></td>
                    <td><strong><%=student.getStudentSemester()%></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Your Contact Number : </strong></td>
                    <td><strong><%=student.getStudentContact()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your City : </strong></td>
                    <td><strong><%=student.getStudentCity()%></strong></td>
                </tr>
            </table>
        </div>
            
            <%
                }
            }
            %>
    </body>
    
    <style>
        body{
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #EEEDEB;
            flex-direction: column;
        }
        
        #outer_card{
            height: 25rem;
            width: 30%;
            border: 2px solid black;
            border-radius: 10px;
            display: flex;
            justify-content: center;
            padding: 10px;
            background-color: #F8EDED;
        }
    </style>
</html>
