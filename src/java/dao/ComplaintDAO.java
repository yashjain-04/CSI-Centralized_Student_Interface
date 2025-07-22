package dao;

import db.DBConnector;
import dto.ComplaintDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ydhup
 */
public class ComplaintDAO {
    public ComplaintDTO getComplaintDetail(String complaintId){
        ComplaintDTO complain = new ComplaintDTO();
        
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM complaint WHERE Id='"+complaintId+"'";
            
            rs = st.executeQuery(query);
            
            if(rs.next()){
                complain.setId(rs.getString(1));
                complain.setComplaintBy(rs.getString(2));
                complain.setComplaintTo(rs.getString(3));
                complain.setTitle(rs.getString(4));
                complain.setComplaint(rs.getString(5));
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return complain;
    }
    
    public ArrayList<ComplaintDTO> getAllComplaintDetails(){
        ArrayList<ComplaintDTO> complains = new ArrayList<>();
        
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM complaint";
            
            rs = st.executeQuery(query);
            
            while(rs.next()){
                ComplaintDTO cdto = new ComplaintDTO();
                cdto.setId(rs.getString(1));
                cdto.setComplaintBy(rs.getString(2));
                cdto.setComplaintTo(rs.getString(3));
                cdto.setTitle(rs.getString(4));
                cdto.setComplaint(rs.getString(5));
                
                complains.add(cdto);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return complains;
    }
}
