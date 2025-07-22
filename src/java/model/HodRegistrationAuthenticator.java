package model;

import db.DBConnector;
import dto.FacultyDTO;
import dto.HodDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class HodRegistrationAuthenticator {
    public boolean isRegister(HodDTO hod, String confirmPassword){
        String hodId = hod.getHodId();
        String name = hod.getHodName();
        String department = hod.getHodDepartment();
        String contact = hod.getHodContact();
        String city = hod.getHodCity();
        String password = hod.getPassword();
        String role = hod.getRole();
        
        if(!password.equals(confirmPassword)){
            return false;
        }
                
        Connection con = null;
        
        try{
            if(hodId.trim().equals("") || name.trim().equals("") || department.trim().equals("") || contact.trim().equals("") || 
                    city.trim().equals("") || password.trim().equals("")){
                return false;
            }
            
            con = DBConnector.getConnection();
            
            String query = "INSERT INTO hod VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            
            pst.setString(1, hodId);
            pst.setString(2, name);
            pst.setString(3, department);
            pst.setString(4, contact);
            pst.setString(5, city);
            pst.setString(6, password);
            pst.setString(7, role);
            
            int i = pst.executeUpdate();
            
            if(i > 0){
                return true;
            }
            else{
                return false;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return false;
    }
}
