<%-- 
    Document   : hodHome
    Created on : 11 Oct, 2024, 7:19:01 PM
    Author     : ydhup
--%>

<%@page import="dto.HodDTO"%>
<%@page import="dao.HodDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOD Home Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer">
    </head>
    
    <%
        String name = null;
        if(session.getAttribute("username") == null){
            response.sendRedirect("login.html");
        }
        else{
            String hodID = (String)session.getAttribute("username");
            HodDAO hdao = new HodDAO();
            HodDTO hod = hdao.getHodDetails(hodID);

            name = hod.getHodName();
        }
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //response.setHeader("Pragma", "no-chache"); // HTTP 1.0
        //response.setHeader("Expires", "0");  // Proxy Server
    %>
    
    <body>
        <a href="signout.jsp" id="signout">Sign-Out</a>
        <h1>Welcome, <%=name%>!</h1>
        <hr>
        
        <div class="sections">
            <div class="card">
                <h2>Profile</h2>
                <hr>
                <div id="innercard">
                    <a href="viewProfile.jsp"><i class="fa-regular fa-address-card"></i></a>
                    
                </div>
                
            </div>
            
            <div class="card">
                <h2>Notifications</h2>
                <hr>
                <div id="innercard">
                    <a href="hodNotification.jsp"><i class="fa-regular fa-bell"></i></a>
                </div>
                
                
            </div>
            
            <div class="card">
                <h2>Complain</h2>
                <hr>
                <div id="innercard">
                    <a href="hodHomeComplaint.jsp"><i class="fa-regular fa-comment-dots"></i></a>
                </div>
                   
            </div>
        </div>
    </body>
    
    <style>
        .body{
            background-color: #EEEDEB
        }
        .sections{
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        
        #innercard{
            display: flex;
            justify-content: center; /* Center horizontally */ 
            align-items: center;
            flex-direction: column;
        }
        
        .card{
            height: 20em;
            width: 20em;
            border: 2px solid black;
            margin: 20px;
            border-radius: 5px;
            background-color: #E6B9A6
        }
        
        h1{
            text-align: center;
            font-size: 4rem;
        }
        
        h2{
            text-align: center;
        }
        
        i{
            font-size: 10rem;
            text-align: center;
        }
        
        a{
            text-decoration: none;
            color: black;
            margin: 10px;
            padding: 5px;
        }
        
        #signout{
            color: white;
            background-color: #B43F3F;
            position: absolute;
            top: 0px;
            right: 0px;
            border: 2px solid black;
            border-radius: 4px;
        }
    </style>
</html>
