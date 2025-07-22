package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ydhup
 */
public class RegistrationRedirectorServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("registartion.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String role = request.getParameter("role");
            
        if(role.equals("Student")) response.sendRedirect("studentRegistration.jsp");
        else if(role.equals("Faculty")) response.sendRedirect("facultyRegistration.jsp");
        else if(role.equals("HOD")) response.sendRedirect("hodRegistration.jsp");
//        else if(role.equals("Admin")) response.sendRedirect("adminRegistration.jsp");
    }
    
    
}
