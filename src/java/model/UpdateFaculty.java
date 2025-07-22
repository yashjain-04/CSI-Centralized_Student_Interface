/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class UpdateFaculty {
    public boolean updateFacultyDetails(FacultyDTO faculty){
        String facultyID = faculty.getFacultyID();
        String facultyName = faculty.getFacultyName();
        String facultyDepartment = faculty.getFacultyDepartment();
        String facultyContact = faculty.getFacultyContact();
        String facultyCity = faculty.getFacultyCity();
        String role = faculty.getRole();
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "UPDATE faculty SET name=?, department=?, contact=?, city=?, role=? WHERE Id='"+facultyID+"'";
            PreparedStatement pst = con.prepareStatement(query);
            
            pst.setString(1, facultyName);
            pst.setString(2, facultyDepartment);
            pst.setString(3, facultyContact);
            pst.setString(4, facultyCity);
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
