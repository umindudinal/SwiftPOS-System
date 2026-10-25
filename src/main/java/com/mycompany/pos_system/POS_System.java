package com.mycompany.pos_system;

/**
 * Main application entry point for SwiftPOS System.
 * 
 * @author Umindu Dinal
 */
public class POS_System {

    public static void main(String[] args) {
        /* Set Nimbus look and feel */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception ex) {
            java.util.logging.Logger.getLogger(POS_System.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }

        /* Launch Login Form */
        java.awt.EventQueue.invokeLater(() -> new LoginForm().setVisible(true));
    }
}
