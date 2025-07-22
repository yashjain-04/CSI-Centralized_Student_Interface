/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.NotificationDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class UpdateNotification {
    public boolean isUpdated(NotificationDTO notification){
        try{
            Connection con = DBConnector.getConnection();
            
            String query = "UPDATE notification SET title=?, message=?, notice_for=?, notice_from=? WHERE number='"+notification.getNumber()+"'";
            
            PreparedStatement pst = con.prepareStatement(query);
            
            pst.setString(1, notification.getTitle());
            pst.setString(2, notification.getMessage());
            pst.setString(3, notification.getNoticeFor());
            pst.setString(4, notification.getNoticeFrom());
            
            int i = pst.executeUpdate();
            
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