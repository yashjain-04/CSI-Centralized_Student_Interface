<%-- 
    Document   : registration
    Created on : 28 Sep, 2024, 3:55:21 PM
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
                  display: flex;
                  flex-direction: column;
                  align-items: center;
                  justify-content: center;
                  height: 40vh;
                  width: 25vw;
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
              
              #inner_card{
                  height: 20vh;
                  display: flex;
                  flex-direction: column;
                  align-items: center;
                  justify-content: center;
              }
        </style>
    </head>
    <body>
        <div id="main_card">
            <form action="RegistrationRedirectorServlet" method="post">
                <div id="inner_card">
                    <h2>Select Role :<h2/>
                    <select name="role">
                        <option>Student</option>
                        <option>Faculty</option>
                        <option>HOD</option>
                    </select>
                </div>
                
                <br/>
                <input type="submit" value="Next" id="submit_button"/>
            </form>
        </div>
    </body>
</html>
