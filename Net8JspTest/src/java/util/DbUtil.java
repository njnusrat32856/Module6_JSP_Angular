/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Naima
 */
public class DbUtil {
    
    private static Connection con= null;
    
    private static String url ="jdbc:mysql://localhost:3307/dbcrud";
    private static String user ="root";
    private static String password ="";
    private static String driver ="com.mysql.cj.jdbc.Driver";
    
    public static Connection getCon(){
    
        try {
            Class.forName(driver);
            
            con = DriverManager.getConnection(url, user, password);
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DbUtil.class.getName()).log(Level.ALL.SEVERE, null, ex);
        }
    
        return con;
    }
    
}
