/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class AddNotification {
    public boolean isAdded(String title, String notification, String noticeFor, String noticeFrom){
        Statement st = null;
        ResultSet rs = null;
        int notificationNumber = 1;
        
        try{
            st = DBConnector.getStatement();
            
            String query1 = "SELECT number FROM notification ORDER BY number DESC LIMIT 1";
            
            rs = st.executeQuery(query1);
            if(rs.next()){
                notificationNumber = Integer.parseInt(rs.getString(1));
            }
            
            String query2 = "INSERT INTO notification VALUES ('"+(notificationNumber+1)+"','"+title+"' ,'"+notification+"','"+noticeFor+"','"+noticeFrom+"')";
            System.out.println(query2);
            
            int i = st.executeUpdate(query2);
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
