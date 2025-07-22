<%-- 
    Document   : hodProfile
    Created on : 27 Nov, 2024, 7:42:18 PM
    Author     : ydhup
--%>

<%@page import="dao.HodDAO"%>
<%@page import="dto.HodDTO"%>
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
                HodDAO hdao = new HodDAO();
                HodDTO hod = hdao.getHodDetails(id);
                
                if(hod == null){
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
                    <td><strong><%=hod.getHodName()%></strong></td>
                </tr>
                
                <tr>
                    <td><strong>Your Course : </strong></td>
                    <td><strong><%=hod.getHodDepartment()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Branch : </strong></td>
                    <td><strong><%=hod.getHodContact()%></strong></td>
                </tr>
                <tr>
                    <td><strong>Your Year : </strong></td>
                    <td><strong><%=hod.getHodCity()%></strong></td>
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
