/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopymarket.app.data;

import com.shopymarket.app.dominio.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Israel
 */
public class DataClientes extends DataBase{

    public DataClientes(String user, String pass) {
        super(user, pass);
    }
    Connection con;
    
    public void insertarCliente(String nombre,String email, String telefono,String pass){
       String sql= "insert into cliente(nombreEmpresa,email,telefono,pass) values('"+nombre+"','"+email+"','"+telefono+"','"+pass+"')";
       
           try {
            con = this.getConection();
            PreparedStatement statement = con.prepareStatement(sql);
   
            statement.executeUpdate();
            statement.close();
        } catch (SQLException ex) {
               JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }
    
    
    
    public boolean eliminarCliente(String id){
    
        boolean eliminar = true;    
        String sql= "DELETE FROM cliente where idEmpresa = "+id;
       
        try {
            con = this.getConection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.executeUpdate();
            statement.close();
            con.close();
        } catch (SQLException ex) {
            eliminar = false;
           JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return eliminar;
    }
    
    
    
    public boolean editarCliente(Cliente c, String id){
        
        boolean actualizar = true;    
        String sql= "UPDATE cliente SET nombreEmpresa='"+c.getNombreEmpresa()+"', email='"+c.getEmail()+"', telefono='"+c.getTelefono()+"' WHERE idEmpresa ="+id;
       
        try {
            con = this.getConection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.executeUpdate();
            statement.close();
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
            actualizar = false;
        }
        return actualizar;
    }
    
    
       public int getNextID(){
            String idQuery="select AUTO_INCREMENT from information_schema.TABLES where TABLE_SCHEMA='proyecto' and TABLE_NAME='cliente';";
            ResultSet re = null;
            int id=0;
            try {
                con = this.getConection();
                PreparedStatement ps= (PreparedStatement) con.prepareStatement(idQuery);
                re=ps.executeQuery();
                if(re.next()){
                    id=Integer.parseInt(re.getString(1));
                } 
		
            } catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e.getMessage());	
            }		
            return id;
	}
}
