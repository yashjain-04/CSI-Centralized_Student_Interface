/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.ComplaintDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AddComplaint;

/**
 *
 * @author ydhup
 */
public class AddComplaintServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("complaintTo.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String complaintBy = request.getParameter("complaintBy");
        String complaintTo = request.getParameter("complaintTo");
        String title = request.getParameter("title");
        String complaint = request.getParameter("complaint");
        
        ComplaintDTO cdto = new ComplaintDTO();
        cdto.setComplaintBy(complaintBy);
        cdto.setComplaintTo(complaintTo);
        cdto.setTitle(title);
        cdto.setComplaint(complaint);
        
        AddComplaint add = new AddComplaint();
        boolean isAdded = add.isAdded(cdto);
        
        String complainer = "";
        
        if(complaintBy.charAt(0) == '0'){
            complainer = "Student";
        }
        else{
            complainer = "Faculty";
        }
        
        if(isAdded && complainer.equals("Student")){
            response.sendRedirect("studentHome.jsp");
        }
        else if(isAdded && complainer.equals("Faculty")){
            response.sendRedirect("facultyHome.jsp");
        }
        else if(complainer.equals("Student")){
            response.sendRedirect("complaintTo.jsp");
        }
        else{
            response.sendRedirect("complaintToHod.jsp");
        }
    }
    
}
