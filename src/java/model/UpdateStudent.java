package model;

import db.DBConnector;
import dto.FacultyDTO;
import dto.StudentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ydhup
 */
public class UpdateStudent {
    public boolean updateStudentDetails(StudentDTO student){
        String id = student.getStudentId();
        String name = student.getStudentName();
        String course = student.getStudentCourse();
        String branch = student.getStudentBranch();
        String year = student.getStudentYear();
        String semester = student.getStudentSemester();
        String contact = student.getStudentContact();
        String city = student.getStudentCity();
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "UPDATE student SET studentName=?, studentCourse=?, studentBranch=?, studentYear=?, studentSemester=?, studentContact=?, studentCity=? WHERE Id='"+id+"'";
            PreparedStatement pst = con.prepareStatement(query);
            System.out.println(query);
            
            pst.setString(1, name);
            pst.setString(2, course);
            pst.setString(3, branch);
            pst.setString(4, year);
            pst.setString(5, semester);
            pst.setString(6, contact);
            pst.setString(7, city);
            
            int i = pst.executeUpdate();
            
            if(i > 0) return true;
        }
        catch(SQLException e){
            System.out.println(e);
        }
        
        return false;
    }
}
