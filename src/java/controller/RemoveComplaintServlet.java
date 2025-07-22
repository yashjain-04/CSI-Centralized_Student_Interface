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
import model.RemoveComplaint;

/**
 *
 * @author ydhup
 */
public class RemoveComplaintServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("updateComplaint");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String complaintBy = request.getParameter("complaintBy");
        String complaintTo = request.getParameter("complaintTo");
        String title = request.getParameter("title");
        String complaint = request.getParameter("complaint");
        
        System.out.println(id);
        
        ComplaintDTO cdto = new ComplaintDTO();
        cdto.setId(id);
        cdto.setComplaintBy(complaintBy);
        cdto.setComplaintTo(complaintTo);
        cdto.setTitle(title);
        cdto.setComplaint(complaint);
        
        RemoveComplaint update = new RemoveComplaint();
        boolean isRemoved = update.isRemoved(cdto);
        
        if(isRemoved){
            response.sendRedirect("adminHome.jsp");
        }
        else{
            response.sendRedirect("updateComplaint.jsp");
        }
    }
}
