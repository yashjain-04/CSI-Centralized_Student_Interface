/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.FacultyDTO;
import dto.StudentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class FacultyRegistrationAuthenticator {
    public boolean isRegister(FacultyDTO faculty, String confirmPassword){
        String facultyId = faculty.getFacultyID();
        String name = faculty.getFacultyName();
        String department = faculty.getFacultyDepartment();
        String contact = faculty.getFacultyContact();
        String city = faculty.getFacultyCity();
        String password = faculty.getFacultyPassword();
        String role = faculty.getRole();
        
        if(!password.equals(confirmPassword)){
            return false;
        }
                
        Connection con = null;
        
        try{
            if(facultyId.trim().equals("") || name.trim().equals("") || department.trim().equals("") || contact.trim().equals("") || 
                    city.trim().equals("") || password.trim().equals("")){
                return false;
            }
            
            con = DBConnector.getConnection();
            
            String query = "INSERT INTO faculty VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            
            pst.setString(1, facultyId);
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
