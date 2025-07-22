package controller;

import dto.LoginDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;

/**
 *
 * @author ydhup
 */
public class LoginCheckerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        String role =  request.getParameter("role");
        
        LoginDTO login = new LoginDTO();
        login.setUserId(userId);
        login.setPassword(password);
        login.setRole(role);
        
        LoginAuthenticator auth = new LoginAuthenticator();
        boolean isLogin = auth.isLogin(login);
        
        if(isLogin){
            HttpSession session = request.getSession();
            session.setAttribute("username", userId);
            session.setAttribute("password", password);
            session.setAttribute("role", role);
            
            if(role.equals("Student")){
                response.sendRedirect("studentHome.jsp");
            }
            if(role.equals("Faculty")){
                response.sendRedirect("facultyHome.jsp");
            }
            if(role.equals("HOD")){
                response.sendRedirect("hodHome.jsp");
            }
            if(role.equals("Admin")){
                response.sendRedirect("adminHome.jsp");
            }
        }
        else{
            response.sendRedirect("login.html");
        }
    }
}
