package model;

import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class RemoveNotification {
    public boolean isRemoved(String number){
        Statement st = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "DELETE FROM notification WHERE number='"+number+"'";
            
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
