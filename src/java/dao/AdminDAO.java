package dao;

import db.DBConnector;
import dto.AdminDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class AdminDAO {
    public AdminDTO getAdminDetails(String adminID){
        AdminDTO admin = new AdminDTO();
        
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM admin WHERE ID='"+adminID+"'";
            
            rs = st.executeQuery(query);
            
            if(rs.next()){
                admin.setAdminId(adminID);
                admin.setAdminName(rs.getString(2));
                admin.setAdminContact(rs.getString(3));
                admin.setAdminCity(rs.getString(4));
            }
            else{
                return null;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return admin;
    }
}
