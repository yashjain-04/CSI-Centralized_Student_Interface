package model;

import db.DBConnector;
import dto.FacultyDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class AddFaculty {
    public boolean isRegister(FacultyDTO faculty, String confirmPassword){
        String facultyID = faculty.getFacultyID();
        String facultyName = faculty.getFacultyName();
        String facultyDepartment = faculty.getFacultyDepartment();
        String facultyContact = faculty.getFacultyContact();
        String facultyCity = faculty.getFacultyCity();
        String facultyPassword = faculty.getFacultyPassword();
        String facultyRole =  faculty.getRole();
        
        if(!facultyPassword.equals(confirmPassword)){
            return false;
        }
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "INSERT INTO faculty VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, facultyID);
            pst.setString(2, facultyName);
            pst.setString(3, facultyDepartment);
            pst.setString(4, facultyContact);
            pst.setString(5, facultyCity);
            pst.setString(6, facultyPassword);
            pst.setString(7, facultyRole);
            
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
