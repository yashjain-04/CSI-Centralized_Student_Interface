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
public class AddStudent {
    public boolean isRegister(StudentDTO student, String confirmPassword){
        String studentID = student.getStudentId();
        String name = student.getStudentName();
        String course = student.getStudentCourse();
        String branch = student.getStudentBranch();
        String year = student.getStudentYear();
        String semester = student.getStudentSemester();
        String contact = student.getStudentContact();
        String city = student.getStudentCity();
        String password = student.getPassword();
        String role =  student.getRole();
        
        if(!password.equals(confirmPassword)){
            return false;
        }
        
        Connection con = null;
        
        try{
            con = DBConnector.getConnection();
            
            String query = "INSERT INTO student VALUES (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, studentID);
            pst.setString(2, name);
            pst.setString(3, course);
            pst.setString(4, branch);
            pst.setString(5, year);
            pst.setString(6, semester);
            pst.setString(7, contact);
            pst.setString(8, city);
            pst.setString(9, password);
            pst.setString(10, role);
            
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
