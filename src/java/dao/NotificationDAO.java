package dao;

import db.DBConnector;
import dto.NotificationDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ydhup
 */
public class NotificationDAO {
    public NotificationDTO getNotification(String number){
        NotificationDTO notification = new NotificationDTO();
        
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM notification WHERE number='"+number+"'";
            
            rs = st.executeQuery(query);
            
            if(rs.next()){
                notification.setNumber(number);
                notification.setTitle(rs.getString(2));
                notification.setMessage(rs.getString(3));
                notification.setNoticeFor(rs.getString(4));
                notification.setNoticeFrom(rs.getString(5));
            }
            else{
                return null;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return notification;
    }
    
    public ArrayList<NotificationDTO> getAllNotifications(){
        ArrayList<NotificationDTO> notifications = new ArrayList<>();
        
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM notification";
            
            rs = st.executeQuery(query);
            
            while(rs.next()){
                NotificationDTO dto = new NotificationDTO();
                dto.setNumber(rs.getString(1));
                dto.setTitle(rs.getString(2));
                dto.setMessage(rs.getString(3));
                dto.setNoticeFor(rs.getString(4));
                dto.setNoticeFrom(rs.getString(5));
                
                notifications.add(dto);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return notifications;
    }
}
