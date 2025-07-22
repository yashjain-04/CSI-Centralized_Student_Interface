package controller;

import dto.FacultyDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UpdateFaculty;

/**
 *
 * @author ydhup
 */
public class UpdateFacultyServlet extends HttpServlet { 
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("updateFaculty.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facultyID = request.getParameter("facultyId");
        String facultyName = request.getParameter("name");
        String facultyDepartment = request.getParameter("department");
        String facultyContact = request.getParameter("contact");
        String facultyCity = request.getParameter("city");
        String role = request.getParameter("role");
        
        FacultyDTO faculty = new FacultyDTO();
        faculty.setFacultyID(facultyID);
        faculty.setFacultyName(facultyName);
        faculty.setFacultyDepartment(facultyDepartment);
        faculty.setFacultyContact(facultyContact);
        faculty.setFacultyCity(facultyCity);
        faculty.setRole(role);
        
        UpdateFaculty update = new UpdateFaculty();
        boolean isUpdated = update.updateFacultyDetails(faculty);
        
        if(isUpdated){
            response.sendRedirect("updateFaculty.jsp");
        }
        else{
            response.sendRedirect("adminHome.jsp");
        }
    }
}
