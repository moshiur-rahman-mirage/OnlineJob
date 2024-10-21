package com.moshiur.jobportal.dao;

import com.moshiur.jobportal.entity.Job;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class JobDAO {
    Connection connection;

    public JobDAO(Connection connection) {
        this.connection = connection;
    }

    public boolean addJobs(Job j){
        boolean flag=true;
        try{
            String sql = "insert into Job(title,category,location,status,pdate) values(?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,j.getTitle());
            statement.setString(2,j.getCategory());
            statement.setString(3,j.getLocation());
            statement.setString(4,j.getStatus());
            statement.setString(5,j.getPdate());

            int i = statement.executeUpdate();
            if(i==1){
                flag=true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return flag;
    }
}
