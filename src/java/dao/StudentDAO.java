package dao;

import db.DBConnector;
import dto.StudentDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ydhup
 */
public class StudentDAO {
    public StudentDTO getStudentDetails(String id){
        StudentDTO student = new StudentDTO();
        
        Statement st = null;
        ResultSet rs = null;
        
        try{
            st = DBConnector.getStatement();
            
            String query = "SELECT * FROM student WHERE Id='"+id+"'";
            
            rs = st.executeQuery(query);
            
            if(rs.next()){
                student.setStudentId(id);
                student.setStudentName(rs.getString(2));
                student.setStudentCourse(rs.getString(3));
                student.setStudentBranch(rs.getString(4));
                student.setStudentYear(rs.getString(5));
                student.setStudentSemester(rs.getString(6));
                student.setStudentContact(rs.getString(7));
                student.setStudentCity(rs.getString(8));
                student.setPassword(rs.getString(9));
                student.setRole(rs.getString(10));
            }
            else{
                return null;
            }
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return student;
    }
}
