package controller;

import dto.StudentDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.StudentRegistrationAuthenticator;

/**
 *
 * @author ydhup
 */
public class StudentCheckerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("studentRegistration.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentId = request.getParameter("studentId");
        String name = request.getParameter("name");
        String course = request.getParameter("course");
        String branch = request.getParameter("branch");
        String year = request.getParameter("year");
        String semester = request.getParameter("semester");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String role = request.getParameter("role");
        
        StudentDTO student = new StudentDTO();
        
        student.setStudentId(studentId);
        student.setStudentName(name);
        student.setStudentCourse(course);
        student.setStudentBranch(branch);
        student.setStudentYear(year);
        student.setStudentSemester(semester);
        student.setStudentContact(contact);
        student.setStudentCity(city);
        student.setPassword(password);
        student.setRole(role);
        
        StudentRegistrationAuthenticator auth = new StudentRegistrationAuthenticator();
        boolean register = auth.isRegister(student, confirmPassword);
        
        if(register){
            response.sendRedirect("login.html");
        }
        else{
            response.sendRedirect("registration.jsp");
        }
        
    }
}
