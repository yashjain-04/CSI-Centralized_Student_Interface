package model;

import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class RemoveStudent {
    public boolean removeStudent(String id){
        Statement st = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "DELETE FROM student WHERE Id='"+id+"'";
            
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
