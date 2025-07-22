/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class RemoveFaculty {
    public boolean removeFaculty(String facultyId){
        Statement st = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "DELETE FROM faculty WHERE Id='"+facultyId+"'";
            
            int i = st.executeUpdate(query);
            
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
