/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shopymarket.app.data;

import com.shopymarket.app.dominio.Tarjetas;
import java.sql.Connection;

/**
 *
 * @author EmmanuelJs
 */
public class DataTarjetas extends DataBase{
    
    Connection con;
    
    public DataTarjetas(String user, String pass) {
        super(user, pass);
    }
    
    public boolean insertarTarjeta(Tarjetas tarjeta){
        
    boolean inserto = true;
    
    return inserto;
    }
    
    
    
}
