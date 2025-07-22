package controller;

import dto.StudentDTO;
import model.UpdateStudent;
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
public class UpdateStudentServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("updateStudent.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("Id");
        String name = request.getParameter("name");
        String course = request.getParameter("course");
        String branch = request.getParameter("branch");
        String year = request.getParameter("year");
        String semester = request.getParameter("semester");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        
        StudentDTO student = new StudentDTO();
        
        student.setStudentId(id);
        student.setStudentName(name);
        student.setStudentCourse(course);
        student.setStudentBranch(branch);
        student.setStudentYear(year);
        student.setStudentSemester(semester);
        student.setStudentContact(contact);
        student.setStudentCity(city);
        
        UpdateStudent update = new UpdateStudent();
        boolean isUpdated = update.updateStudentDetails(student);
        
        if(isUpdated){
            response.sendRedirect("updateStudent.jsp");
        }
        else{
            response.sendRedirect("adminHome.jsp");
        }
    }
}
