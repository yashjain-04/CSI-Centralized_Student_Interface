package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AddNotification;

/**
 *
 * @author ydhup
 */
public class AddNotificationServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("addNotification.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String notification = request.getParameter("notification");
        String noticeFor = request.getParameter("noticeFor");
        String noticeFrom = request.getParameter("noticeFrom");
        
        AddNotification add = new AddNotification();
        boolean isAdded = add.isAdded(title, notification, noticeFor, noticeFrom);
        
        if(isAdded){
            if(noticeFrom.charAt(0) == '1'){
                response.sendRedirect("facultyHome.jsp");
            }
            else if(noticeFrom.equals("221230")){
                response.sendRedirect("adminHome.jsp");
            }
            else if(noticeFrom.charAt(0) == '2'){
                response.sendRedirect("hodHome.jsp");
            }
            else{
                response.sendRedirect("addNotification.jsp");
            }
        }
        else{
            if(noticeFrom.charAt(0) == '1'){
                response.sendRedirect("notificationForStudent.jsp");
            }
            else if(noticeFrom.equals("221230")){
                response.sendRedirect("notificationFor.jsp");
            }
            else if(noticeFrom.charAt(0) == '2'){
                response.sendRedirect("notificationFor.jsp");
            }
            else{
                response.sendRedirect("addNotification.jsp");
            }
        }
    }
}

