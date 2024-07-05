
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DbUtil;

public class EmployeeDao {
    
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql ="";

    public static int saveData(Employee e){
    
        int status =0;
        
        sql = "insert into employee(name,email,address,mobile,dept) values(?,?,?,?,?)";
        
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getAddress());
            ps.setString(4, e.getMobile());
            ps.setString(5, e.getDept());
            
            status = ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return status;
    }
    public static List<Employee> viewAllData(){
    
        List<Employee> em= new ArrayList<>();
        
        sql ="select * from employee";
        
        try {
            ps =DbUtil.getCon().prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                Employee e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("mobile"),
                        rs.getString("dept")
                );
                em.add(e);
            }
            ps.close();
            rs.close();
            
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return em;
    }
    public static void deleteData(Employee e){
    
        sql = "delete from employee where id=?";
        
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, e.getId());
            
            ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void updateData(Employee e){
    
        sql ="update employee set name=?,email=?,address=?,mobile=?,dept=? where id=?";
        
        try {
            ps =DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setString(3, e.getAddress());
            ps.setString(4, e.getMobile());
            ps.setString(5, e.getDept());
            ps.setInt(6, e.getId());
            
            ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public static Employee getById(int id){
    
        Employee e = null;
        
        sql ="select * from employee where id=?";
        
        try {
            ps =DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, id);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("mobile"),
                        rs.getString("dept")
                );
                
            }
            ps.close();
            rs.close();
            
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return e;
    }
}
