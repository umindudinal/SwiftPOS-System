package com.mycompany.pos_system;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class DBConnect {
    public static Connection connect() {
        Connection conn = null;
        try {
            // MySQL Driver එක load කිරීම
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Database එකට connect වීම 
            // (ඔයාගේ MySQL password එක මෙතන දෙන්න, නැත්නම් "" විදියට තියන්න)
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pos_system", "root", "0318"); 
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return conn;
    }
}