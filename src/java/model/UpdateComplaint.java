package model;

import db.DBConnector;
import dto.ComplaintDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class UpdateComplaint {
    public boolean isUpdated(ComplaintDTO cdto){
        String id = cdto.getId();
        String complaintBy = cdto.getComplaintBy();
        String complaintTo = cdto.getComplaintTo();
        String title = cdto.getTitle();
        String complaint = cdto.getComplaint();
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "UPDATE complaint SET complaintBy=?, complaintTo=?, title=?, complaint=? WHERE Id='"+id+"'";
            PreparedStatement pst = con.prepareStatement(query);
            
            pst.setString(1, complaintBy);
            pst.setString(2, complaintTo);
            pst.setString(3, title);
            pst.setString(4, complaint);
            
            int i = pst.executeUpdate();
            
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
