package model;

import db.DBConnector;
import dto.ComplaintDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class AddComplaint {
    public boolean isAdded(ComplaintDTO cdto){
        String complaintBy = cdto.getComplaintBy();
        String complaintTo = cdto.getComplaintTo();
        String title = cdto.getTitle();
        String complaint = cdto.getComplaint();
        int Id = -1;
        
        Statement st = null;
        ResultSet rs = null;
        Connection con = null;
        
        try{
            st = DBConnector.getStatement();
            con = DBConnector.getConnection();
            
            String query1 = "SELECT Id FROM complaint ORDER BY Id DESC LIMIT 1";
            
            rs = st.executeQuery(query1);
            
            if(rs.next()){
                Id = Integer.parseInt(rs.getString(1)) + 1;
            }
            else{
                Id = 1;
            }
            
            String query = "INSERT INTO complaint VALUES (?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, String.valueOf(Id));
            pst.setString(2, complaintBy);
            pst.setString(3, complaintTo);
            pst.setString(4, title);
            pst.setString(5, complaint);
            
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