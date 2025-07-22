/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.ComplaintDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class RemoveComplaint {
    public boolean isRemoved(ComplaintDTO cdto){
        String id = cdto.getId();
        
        Statement st = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "DELETE FROM complaint WHERE Id='"+id+"'";
            
            int i = st.executeUpdate(query);
            
            System.out.println(query);
            
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
