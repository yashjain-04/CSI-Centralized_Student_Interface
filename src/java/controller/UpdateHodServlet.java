package controller;

import dto.HodDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UpdateHOD;

/**
 *
 * @author ydhup
 */
public class UpdateHodServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("updateHOD.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String HodId = request.getParameter("id");
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        String role = request.getParameter("role");
        
        HodDTO hod = new HodDTO();
        hod.setHodId(HodId);
        hod.setHodName(name);
        hod.setHodDepartment(department);
        hod.setHodContact(contact);
        hod.setHodCity(city);
        hod.setRole(role);
        
        UpdateHOD update = new UpdateHOD();
        boolean isUpdated = update.updateFacultyDetails(hod);
        
        if(isUpdated){
            response.sendRedirect("updateHOD.jsp");
        }
        else{
            response.sendRedirect("adminHome.jsp");
        }
    }
}
