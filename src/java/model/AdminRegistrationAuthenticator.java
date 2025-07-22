package model;

import db.DBConnector;
import dto.AdminDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class AdminRegistrationAuthenticator {
    public boolean isRegister(AdminDTO admin, String confirmPassword){
        String adminId = admin.getAdminId();
        String adminName = admin.getAdminName();
        String adminContact = admin.getAdminContact();
        String adminCity = admin.getAdminCity();
        String password = admin.getAdminPassword();
        String role = admin.getRole();
        
        if(!password.equals(confirmPassword)){
            return false;
        }
        
//        try{
//            Connection con = DBConnector.getConnection();
//            
//            String query = "INSERT INTO admin VALUES (?,?,?,?,?,?)";
//            PreparedStatement pst = con.prepareStatement(query);
//            
//            pst.setString(1, adminId);
//            pst.setString(2, adminName);
//            pst.setString(3, adminContact);
//            pst.setString(4, adminCity);
//            pst.setString(5, password);
//            pst.setString(6, role);
//            
//            int i = pst.executeUpdate();
//            
//            if(i > 0){
//                return true;
//            }
//        }
//        catch(SQLException e){
//            System.out.println(e);
//        }
        
        return false;
    }
}
