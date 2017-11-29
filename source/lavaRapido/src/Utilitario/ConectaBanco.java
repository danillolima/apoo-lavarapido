/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utilitario;

import java.sql.*;
import javax.swing.JOptionPane;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;

/**
 *
 * @author Uildson
 */
public class ConectaBanco {
    
    public Statement stm; //responsavel por preparar e realizar pesquisas no banco de dados
    public ResultSet rs; // responsavel por armazenar o resultado de uma pesquisa passada para  o statement
    private String driver = "org.postgresql.Driver"; // responsavel por identificas o serviço de banco de dados
    private String caminho = "jdbc:postgresql://localhost:5432/lavarapidoV2";// responsavel por setar o local do banco de dados
    private String usuario = "postgres";
    private String senha = "root";
    public Connection conn; // responsavel por realizar a conexão com o banco de dados
    
    
    
    //public void conexao()
    public void conexao(){
        try { // tentativa inicial
            System.setProperty("jdbc.Drivers", driver); // seta a propriedade do driver de conexão
            conn = DriverManager.getConnection(caminho, usuario, senha); // realiza a conexão com o banco de dados
            //JOptionPane.showMessageDialog(null, "Conectado com Sucesso!"); // imprime uma caixa de msg
        } catch (SQLException ex) { // caso erro de conecção
            JOptionPane.showMessageDialog(null, "Erro de conexão!\n Erro:" +ex.getMessage());
        }
    }
     public void deconecta(){ // metodo para fechar a conexão com o banco de dados
         
        try {
            conn.close(); // fecha a conexão
            JOptionPane.showMessageDialog(null, "Deconectado com Sucesso!"); // imprime uma caixa de msg
            
            
        } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, "Erro ao fechar a conexão!\n Erro:" +ex.getMessage());
        }
     }
      public void executaSQL(String sql){
                 

        try {
            stm = conn.createStatement(rs.TYPE_SCROLL_INSENSITIVE, rs.CONCUR_READ_ONLY);
            //stm = conn.createStatement(rs.TYPE_SCROLL_INSENSITIVE, rs.CONCUR_UPDATABLE);
            //stm.getResultSet();
            rs = stm.executeQuery(sql);
            
        } catch (SQLException ex) {
           // JOptionPane.showMessageDialog(null, "Erro de executaSQL!\n Erro:" +ex.getMessage());
        }
       
      }
}
