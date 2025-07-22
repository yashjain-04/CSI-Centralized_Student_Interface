package controller;

import dto.FacultyDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.FacultyRegistrationAuthenticator;

/**
 *
 * @author ydhup
 */
public class FacultyCheckerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("facultyRegistration.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facultyId = request.getParameter("facultyId");
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String role = request.getParameter("role");
        
        FacultyDTO faculty = new FacultyDTO();
        
        faculty.setFacultyID(facultyId);
        faculty.setFacultyName(name);
        faculty.setFacultyDepartment(department);
        faculty.setFacultyContact(contact);
        faculty.setFacultyCity(city);
        faculty.setFacultyPassword(password);
        faculty.setRole(role);
        
        FacultyRegistrationAuthenticator auth = new FacultyRegistrationAuthenticator();
        boolean register = auth.isRegister(faculty, confirmPassword);
        
        if(register){
            response.sendRedirect("login.html");
        }
        else{
            response.sendRedirect("registration.jsp");
        }
    }
}
