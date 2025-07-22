package controller;

import dto.AdminDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AdminRegistrationAuthenticator;

/**
 *
 * @author ydhup
 */
public class AdminCheckerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("adminRegistration.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminId = request.getParameter("adminId");
        String adminName = request.getParameter("name");
        String adminContact = request.getParameter("contact");
        String adminCity = request.getParameter("city");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        
        AdminDTO admin = new AdminDTO();
        admin.setAdminId(adminId);
        admin.setAdminName(adminName);
        admin.setAdminContact(adminContact);
        admin.setAdminCity(adminCity);
        admin.setAdminPassword(password);
        admin.setRole("Admin");
        
//        AdminRegistrationAuthenticator authenticator = new AdminRegistrationAuthenticator();
//        boolean register = authenticator.isRegister(admin, request.getParameter("confirmPassword"));
//        
//        if(register){
//            response.sendRedirect("login.html");
//        }
//        else{
//            response.sendRedirect("registration2.html");
//        }
    }
}
