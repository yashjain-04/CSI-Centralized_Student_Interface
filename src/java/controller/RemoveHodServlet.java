package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RemoveHOD;

/**
 *
 * @author ydhup
 */
public class RemoveHodServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("removeHOD.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String HodID = request.getParameter("id");
        
        RemoveHOD hod = new RemoveHOD();
        boolean removed = hod.removeHOD(HodID);
        
        if(removed){
            response.sendRedirect("adminHome.jsp");
        }
        else{
            response.sendRedirect("removeHOD.jsp");
        }
    }
}
