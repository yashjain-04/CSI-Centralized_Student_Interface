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
import model.RemoveNotification;

/**
 *
 * @author ydhup
 */
public class RemoveNotificationServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("removeNotification.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        String noticeFrom = request.getParameter("noticeFrom");
        String removeBy = request.getParameter("removeBy");
        
        RemoveNotification notification = new RemoveNotification();
        boolean isRemoved = notification.isRemoved(number);
        
        if(isRemoved){
            if(removeBy.charAt(0) == '1'){
                response.sendRedirect("facultyHome.jsp");
            }
            else if(removeBy.equals("221230")){
                response.sendRedirect("adminHome.jsp");
            }
            else if(removeBy.charAt(0) == '2'){
                response.sendRedirect("hodHome.jsp");
            }
            else{
                response.sendRedirect("addNotification.jsp");
            }
        }
        else{
            if(removeBy.charAt(0) == '1'){
                response.sendRedirect("notificationForStudent.jsp");
            }
            else if(removeBy.equals("221230")){
                response.sendRedirect("notificationFor.jsp");
            }
            else if(removeBy.charAt(0) == '2'){
                response.sendRedirect("notificationFor.jsp");
            }
            else{
                response.sendRedirect("addNotification.jsp");
            }
        }
    }
}
