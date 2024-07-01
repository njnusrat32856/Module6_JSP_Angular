
package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import util.DbUtil;

public class StudentDao {
    
    static PreparedStatement ps;
    static String sql = "";

    public static int saveData(Student s){
    
        int status =0;
        
        sql ="insert into student(name,email,address) values(?,?,?)";
        
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getAddress());
            
            status = ps.executeUpdate();
            System.out.println(status);
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
    
}
