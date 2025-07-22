package dao;

import db.DBConnector;
import dto.FacultyDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ydhup
 */
public class FacultyDAO {
    public FacultyDTO getFacultyDetails(String facultyID){
        FacultyDTO faculty = new FacultyDTO();
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM faculty WHERE Id='"+facultyID+"'";
            
            rs = st.executeQuery(query);
            
            if(rs.next()){
                faculty.setFacultyName(rs.getString(2));
                faculty.setFacultyDepartment(rs.getString(3));
                faculty.setFacultyContact(rs.getString(4));
                faculty.setFacultyCity(rs.getString(5));
                faculty.setRole(rs.getString(7));
            }
            else{
                return null;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return faculty;
    }
    
    public ArrayList<FacultyDTO> getAllFacultiesDetails(){
        ArrayList<FacultyDTO> faculties = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM faculty";
            
            rs = st.executeQuery(query);
            
            while(rs.next()){
                FacultyDTO dto = new FacultyDTO();
                
                dto.setFacultyID(rs.getString(1));
                dto.setFacultyName(rs.getString(2));
                dto.setFacultyDepartment(rs.getString(3));
                dto.setFacultyContact(rs.getString(4));
                dto.setFacultyCity(rs.getString(5));
                dto.setFacultyPassword(rs.getString(6));
                
                faculties.add(dto);
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return faculties;
    }
}
