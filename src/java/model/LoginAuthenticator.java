/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.LoginDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class LoginAuthenticator {
    public boolean isLogin(LoginDTO login){
        String userId = login.getUserId();
        String password = login.getPassword();
        String role = login.getRole();
        
        String tablePassword = "";
        String tableRole = "";
        
        String tableName = "";
        if(role.equals("Student")) tableName = "student";
        else if(role.equals("Faculty")) tableName = "faculty";
        else if(role.equals("HOD")) tableName = "hod";
        else if(role.equals("Admin")) tableName = "admin";
        
        try{
            Statement st = DBConnector.getStatement();
            ResultSet rs = null;
            
            String query = "SELECT password,role FROM "+tableName+" WHERE Id='"+userId+"'";
            rs = st.executeQuery(query);
            
            if(rs.next()){
                tablePassword = rs.getString(1);
                tableRole = rs.getString(2);
                System.out.println(tablePassword+" "+tableRole);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        if(tablePassword.equals(password) && tableRole.equals(role)){
            return true;
        }
        return false;
    }
}
