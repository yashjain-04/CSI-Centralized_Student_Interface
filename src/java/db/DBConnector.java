package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ydhup
 */
public class DBConnector {
    static Statement st =  null;
    static Connection con = null;
    
    static{
        try{
            //Step 1 : Load Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver Loaded");
            
            //Step 2 : Establish Connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSI","root","groot");
            System.out.println("Connected");
            
            //Step 3 : Create Statement
            st = con.createStatement();
        }
        catch(SQLException e){
            System.out.println(e);
        }
        catch(ClassNotFoundException e){
            System.out.println(e);
        }
    }
    
    public static Statement getStatement(){
        return st;
    }
    
    public static Connection getConnection(){
        return con;
    }
}
