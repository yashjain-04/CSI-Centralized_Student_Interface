package controller;

import dto.StudentDTO;
import model.AddStudent;
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
public class AddStudentServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("addStudent.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentID = request.getParameter("studentID");
        String name = request.getParameter("name");
        String course = request.getParameter("course");
        String branch = request.getParameter("branch");
        String year = request.getParameter("year");
        String semester = request.getParameter("semester");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        String facultyPassword = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        StudentDTO student = new StudentDTO();
        student.setStudentId(studentID);
        student.setStudentName(name);
        student.setStudentCourse(course);
        student.setStudentBranch(branch);
        student.setStudentYear(year);
        student.setStudentSemester(semester);
        student.setStudentContact(contact);
        student.setStudentCity(city);
        student.setPassword(facultyPassword);
        student.setRole("Student");
        
        AddStudent s = new AddStudent();
        boolean register = s.isRegister(student, confirmPassword);
        
        if(register){
            response.sendRedirect("viewStudent.jsp");
        }
        else{
            response.sendRedirect("addStudent.jsp");
        }
    }
}
