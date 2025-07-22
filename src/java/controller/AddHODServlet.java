package controller;

import model.AddHOD;
import dto.HodDTO;
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
public class AddHODServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("addHOD.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String HodID = request.getParameter("id");
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        String contact = request.getParameter("contact");
        String city = request.getParameter("city");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        HodDTO hod = new HodDTO();
        hod.setHodId(HodID);
        hod.setHodName(name);
        hod.setHodDepartment(department);
        hod.setHodContact(contact);
        hod.setHodCity(city);
        hod.setPassword(password);
        hod.setRole("HOD");
        
        AddHOD h = new AddHOD();
        boolean register = h.isRegister(hod, confirmPassword);
        
        if(register){
            response.sendRedirect("viewHOD.jsp");
        }
        else{
            response.sendRedirect("addHOD.jsp");
        }
    }
}
