package controller;

import dto.HodDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.HodRegistrationAuthenticator;

/**
 *
 * @author ydhup
 */
public class HODCheckerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("hodRegistration.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hodId = request.getParameter("hodId");
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String role = request.getParameter("role");
        
        HodDTO hod = new HodDTO();
        
        hod.setHodId(hodId);
        hod.setHodName(name);
        hod.setHodDepartment(department);
        hod.setHodContact(contact);
        hod.setHodCity(city);
        hod.setPassword(password);
        hod.setRole(role);
        
        HodRegistrationAuthenticator auth = new HodRegistrationAuthenticator();
        boolean register = auth.isRegister(hod, confirmPassword);
        
        if(register){
            response.sendRedirect("login.html");
        }
        else{
            response.sendRedirect("registration.jsp");
        }
    }

}
