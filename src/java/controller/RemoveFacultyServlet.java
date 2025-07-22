/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RemoveFaculty;

/**
 *
 * @author ydhup
 */
public class RemoveFacultyServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("removeFaculty.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facultyId = request.getParameter("facultyId");
        
        RemoveFaculty faculty = new RemoveFaculty();
        boolean removed = faculty.removeFaculty(facultyId);
        
        if(removed){
            response.sendRedirect("adminHome.jsp");
        }
        else{
            response.sendRedirect("removeFaculty.jsp");
        }
    }
}
