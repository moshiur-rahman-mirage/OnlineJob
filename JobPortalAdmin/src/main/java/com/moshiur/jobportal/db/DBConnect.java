package com.moshiur.jobportal.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    public static Connection connection;
    static String url="jdbc:sqlserver://localhost:1433;databaseName=JobPortal;encrypt=false;trustServerCertificate=true;";
    static String user="sa";
    static String password="123456";

    public static Connection getConnection() throws SQLException {
        if (connection==null){
           try{
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               connection= DriverManager.getConnection(url,user,password);
           }catch(Exception e){
               e.printStackTrace();
           }


        }

        return connection;
    }
}
