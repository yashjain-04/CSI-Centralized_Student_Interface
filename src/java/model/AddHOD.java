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
public class AddHOD {
    public boolean isRegister(HodDTO faculty, String confirmPassword){
        String HodID = faculty.getHodId();
        String hodName = faculty.getHodName();
        String hodDepartment = faculty.getHodDepartment();
        String hodContact = faculty.getHodContact();
        String hodCity = faculty.getHodCity();
        String hodPassword = faculty.getPassword();
        String role =  faculty.getRole();
        
        if(!hodPassword.equals(confirmPassword)){
            return false;
        }
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "INSERT INTO hod VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, HodID);
            pst.setString(2, hodName);
            pst.setString(3, hodDepartment);
            pst.setString(4, hodContact);
            pst.setString(5, hodCity);
            pst.setString(6, hodPassword);
            pst.setString(7, role);
            
            int i = pst.executeUpdate();
            
            if(i > 0){
                return true;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return false;
    }
}
