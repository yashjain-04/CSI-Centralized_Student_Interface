package controller;

import model.RemoveStudent;
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
public class RemoveStudentServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("removeStudent.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        
        RemoveStudent student = new RemoveStudent();
        boolean removed = student.removeStudent(id);
        
        if(removed){
            response.sendRedirect("adminHome.jsp");
        }
        else{
            response.sendRedirect("removeStudent.jsp");
        }
    }
}
