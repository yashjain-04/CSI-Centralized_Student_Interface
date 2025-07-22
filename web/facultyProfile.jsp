<%-- 
    Document   : facultyProfile
    Created on : 27 Nov, 2024, 7:41:43 PM
    Author     : ydhup
--%>

<%@page import="dto.FacultyDTO"%>
<%@page import="dao.FacultyDAO"%>
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
                FacultyDAO fdao = new FacultyDAO();
                FacultyDTO faculty = fdao.getFacultyDetails(id);
                
                if(faculty == null){
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
                    <td><strong><%=faculty.getFacultyName()%></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Your Department : </strong></td>
                    <td><strong><%=faculty.getFacultyDepartment()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your City : </strong></td>
                    <td><strong><%=faculty.getFacultyCity()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Contact : </strong></td>
                    <td><strong><%=faculty.getFacultyContact()%></strong></td>
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
