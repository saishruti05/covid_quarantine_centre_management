/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * Delete.java
 *
 * Created on Nov 14, 2020, 10:13:27 AM
 */

package newpackage;
import java.sql.*;

import javax.swing.*;


/**
 *
 * @author user
 */
public class Delete extends javax.swing.JFrame {

    /** Creates new form Delete */
    public Delete() {
        initComponents();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(190, 46, 46));
        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 24));
        jLabel1.setText("delete record");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(270, 10, 190, 40);

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 36));
        jLabel2.setForeground(new java.awt.Color(153, 0, 153));
        jLabel2.setText("          ID");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(10, 140, 320, 30);
        jPanel1.add(jTextField1);
        jTextField1.setBounds(410, 70, 130, 30);
        jPanel1.add(jTextField2);
        jTextField2.setBounds(410, 130, 130, 30);

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 36));
        jLabel4.setForeground(new java.awt.Color(153, 0, 153));
        jLabel4.setText("name of table");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(10, 90, 320, 30);

        jButton1.setText("DELETE RECORD");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(250, 290, 120, 23);

        jButton2.setText("back");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2);
        jButton2.setBounds(280, 340, 270, 23);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 716, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 480, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
                          String  table=(String)jTextField1.getText();
                          String  id=(String)jTextField2.getText();
                          try {

            Class.forName("java.sql.DriverManager");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/shruti","root","123");
           Statement s=c.createStatement();
            String query;
            query=" delete from "+table+" where id='"+id+"' ;";
            s.executeUpdate(query);
            JOptionPane.showMessageDialog(null,"one record delete");
                          } catch (Exception e) { JOptionPane.showMessageDialog(null,e.getMessage());
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here
        FirstPage p=new FirstPage();
        p.setVisible(true);
        this.dispose();
}//GEN-LAST:event_jButton2ActionPerformed

    /**
    * @param args the command line arguments
    */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Delete().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    // End of variables declaration//GEN-END:variables

}