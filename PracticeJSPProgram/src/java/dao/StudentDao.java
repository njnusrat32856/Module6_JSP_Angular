
package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import util.DbUtil;

public class StudentDao {
    
//    static Student s = new Student();

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";
    
    public static int saveStudent(Student s){
        
        int status = 0;
    
        sql = "insert into student(name, email, address, cellNo) values(?,?,?,?)";
        
        try {
            ps = DbUtil.getConnect().prepareStatement(sql);
            
            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getAddress());
            ps.setString(4, s.getCellNo());
            
            status = ps.executeUpdate();
            System.out.println(status);
            
            ps.close();
            DbUtil.getConnect().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return status;
    }
    public static List<Student> viewAllStudent(){
    
        List<Student> stList = new ArrayList<>();
        
        sql ="select * from student";
        
        try {
            ps = DbUtil.getConnect().prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                Student st = new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"), 
                        rs.getString("address"),
                        rs.getString("cellNo")
                        
                );
                stList.add(st);
            }
            ps.close();
            rs.close();
            
            DbUtil.getConnect().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stList;
    }
    public static void deleteStudent(Student s){
    
        sql ="delete from student where id=?";
        
        try {
            ps =DbUtil.getConnect().prepareStatement(sql);
            
            ps .setInt(1, s.getId());
            
            ps.executeUpdate();
            
            ps.close();
            DbUtil.getConnect().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
