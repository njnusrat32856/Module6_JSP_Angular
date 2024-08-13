/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Teacher;
import util.DbUtil;

/**
 *
 * @author Admin
 */
public class TeacherDao {
    
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";
    
    public static int saveData(Teacher s){
        
        int status =0;
        
        sql = "insert into teacher(name, dept, gender) values(?,?,?)";
        
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, s.getName());
            ps.setString(2, s.getDept());
            ps.setString(3, s.getGender());
            
            
            
            status = ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return status;
    }
    
    public static List<Teacher> viewAllData(){
    
        List<Teacher> st= new ArrayList<>();
        
        sql ="select * from teacher";
        
        try {
            ps =DbUtil.getCon().prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                Teacher s = new Teacher(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("dept"),
                        rs.getString("gender")
                        
                        
                );
                st.add(s);
            }
            ps.close();
            rs.close();
            
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return st;
    }
    
    public static void deleteData(Teacher e){
    
        sql = "delete from teacher where id=?";
        
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, e.getId());
            
            ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void updateData(Teacher e){
    
        sql ="update teacher set name=?,dept=?,gender=? where id=?";
        
        try {
            ps =DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getDept());
            ps.setString(3, e.getGender());
            
            
            ps.setInt(4, e.getId());
            
            ps.executeUpdate();
            
            ps.close();
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static Teacher getById(int id){
    
        Teacher e = null;
        
        sql ="select * from teacher where id=?";
        
        try {
            ps =DbUtil.getCon().prepareStatement(sql);
            
            ps.setInt(1, id);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                e = new Teacher(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("dept"),
                        rs.getString("gender")
                        
                        
                );
                
            }
            ps.close();
            rs.close();
            
            DbUtil.getCon().close();
            
        } catch (SQLException ex) {
            Logger.getLogger(TeacherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return e;
    }
}
