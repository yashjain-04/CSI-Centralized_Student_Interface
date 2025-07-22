package model;

import db.DBConnector;
import dto.HodDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class UpdateHOD {
    public boolean updateFacultyDetails(HodDTO hod){
        String HodID = hod.getHodId();
        String name = hod.getHodName();
        String department = hod.getHodDepartment();
        String contact = hod.getHodContact();
        String city = hod.getHodCity();
        String role = hod.getRole();
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "UPDATE hod SET hodName=?, hodDepartment=?, hodContact=?, hodCity=?, role=? WHERE Id='"+HodID+"'";
            PreparedStatement pst = con.prepareStatement(query);
            System.out.println(query);
            
            pst.setString(1, name);
            pst.setString(2, department);
            pst.setString(3, contact);
            pst.setString(4, city);
            pst.setString(5, role);
            
            int i = pst.executeUpdate();
            
            if(i > 0) return true;
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return false;
    }
}
