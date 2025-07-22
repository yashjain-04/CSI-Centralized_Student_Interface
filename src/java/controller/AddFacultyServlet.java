package controller;

import dto.FacultyDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AddFaculty;

/**
 *
 * @author ydhup
 */
public class AddFacultyServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("addFaculty.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facultyID = request.getParameter("facultyID");
        String facultyName = request.getParameter("name");
        String facultyDepartment = request.getParameter("department");
        String facultyContact = request.getParameter("contact");
        String facultyCity = request.getParameter("city");
        String facultyPassword = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        FacultyDTO faculty = new FacultyDTO();
        faculty.setFacultyID(facultyID);
        faculty.setFacultyName(facultyName);
        faculty.setFacultyDepartment(facultyDepartment);
        faculty.setFacultyContact(facultyContact);
        faculty.setFacultyCity(facultyCity);
        faculty.setFacultyPassword(facultyPassword);
        faculty.setRole("Faculty");
        
        AddFaculty f = new AddFaculty();
        boolean register = f.isRegister(faculty, confirmPassword);
        
        if(register){
            response.sendRedirect("viewFaculty.jsp");
        }
        else{
            response.sendRedirect("addFaculty.jsp");
        }
    }
}
