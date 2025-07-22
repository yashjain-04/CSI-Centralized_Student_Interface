package dao;

import db.DBConnector;
import dto.HodDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ydhup
 */
public class HodDAO {
    public HodDTO getHodDetails(String id){
        HodDTO hod = new HodDTO();
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM hod WHERE Id='"+id+"'";
            
            rs = st.executeQuery(query);
            
            if(rs.next()){
                hod.setHodName(rs.getString(2));
                hod.setHodDepartment(rs.getString(3));
                hod.setHodContact(rs.getString(4));
                hod.setHodCity(rs.getString(5));
                hod.setRole(rs.getString(7));
            }
            else{
                return null;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return hod;
    }
    
    
    public ArrayList<HodDTO> getAllHodsDetails(){
        ArrayList<HodDTO> hods = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM hod";
            
            rs = st.executeQuery(query);
            
            while(rs.next()){
                HodDTO dto = new HodDTO();
                
                dto.setHodId(rs.getString(1));
                dto.setHodName(rs.getString(2));
                dto.setHodDepartment(rs.getString(3));
                dto.setHodContact(rs.getString(4));
                dto.setHodCity(rs.getString(5));
                
                hods.add(dto);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return hods;
    }
}
