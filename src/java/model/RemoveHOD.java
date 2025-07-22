package model;

import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class RemoveHOD {
    public boolean removeHOD(String HODId){
        Statement st = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "DELETE FROM hod WHERE Id='"+HODId+"'";
            
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
