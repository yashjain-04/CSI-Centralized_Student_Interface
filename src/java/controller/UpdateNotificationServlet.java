package controller;

import model.UpdateNotification;
import dto.NotificationDTO;
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
public class UpdateNotificationServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("updateNotification.jsp");
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        String title = request.getParameter("title");
        String message = request.getParameter("message");
        String noticeFor = request.getParameter("noticeFor");
        String noticeFrom = request.getParameter("noticeFrom");
        
        NotificationDTO notification = new NotificationDTO();
        notification.setNumber(number);
        notification.setTitle(title);
        notification.setMessage(message);
        notification.setNoticeFor(noticeFor);
        notification.setNoticeFrom(noticeFrom);
        
        UpdateNotification update = new UpdateNotification();
        boolean isUpdated = update.isUpdated(notification);
        
        if(isUpdated){
            response.sendRedirect("notificationUpdatedSuccesfully.jsp");
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
