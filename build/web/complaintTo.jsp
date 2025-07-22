<%-- 
    Document   : complaintTo
    Created on : 24 Nov, 2024, 4:42:07 PM
    Author     : ydhup
--%>

<%@page import="dto.HodDTO"%>
<%@page import="dao.HodDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.FacultyDTO"%>
<%@page import="dao.FacultyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint To</title>
    </head>
    <body bgcolor="#EEEDEB">
        <h1>Complaint To...?</h1>
        <a href="complaintToFaculty.jsp">Any Faculty</a>
        <a href="complaintToHod.jsp">Any HOD</a>
    </body>
    
    <style>
        a{
            color: white;
            background-color: #B43F3F;
            border: 2px solid black;
            border-radius: 4px;
            text-decoration: none;
            margin: 20px;
            padding: 5px;
        }
    </style>
</html>











