/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swing.lomba;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author E
 */
public class Koneksi {
    private static Connection connection;
    public static Connection getConnection(){
        if(connection==null){
            try {
                String DB = "jdbc:mysql://localhost:3306/lomba";
                String user = "root";
                String pass = "";
                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                connection = DriverManager.getConnection(DB,user,pass);
                System.out.println("Koneksi Database Sukses");
            } catch (SQLException e) {
                System.out.println("Koneksi Database Failed");
            }
        }
        return connection;
    }
}
