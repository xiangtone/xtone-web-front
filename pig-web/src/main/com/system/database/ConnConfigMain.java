package com.system.database;

import java.sql.*;
import javax.sql.DataSource;
import org.apache.commons.dbcp.BasicDataSource;

import com.xtone.util.ConfigManager;



public abstract class ConnConfigMain
{

    public ConnConfigMain()
    {
    }

    public static synchronized Connection getConnection()
        throws SQLException
    {
        return instance.getConnection();
    }

    public static DataSource getDataSource()
        throws SQLException
    {
        return instance;
    }

    public static DataSource setupDataSource()
    {
        BasicDataSource ds = new BasicDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl(ConfigManager.getConfigData("MainConfigDbServer"));
        ds.setUsername(ConfigManager.getConfigData("MainConfigUserName"));
        ds.setPassword(ConfigManager.getConfigData("MainConfigPassword"));
        ds.setInitialSize(4);
        ds.setMaxActive(32);
        ds.setMaxIdle(8);
        ds.setMinIdle(4);
        ds.setMaxWait(2048);
        return ds;
    }

    public static void printDataSourceStats(DataSource ds)
        throws SQLException
    {
        BasicDataSource bds = (BasicDataSource)ds;
        System.out.println((new StringBuilder("NumActive: ")).append(bds.getNumActive()).toString());
        System.out.println((new StringBuilder("NumIdle: ")).append(bds.getNumIdle()).toString());
    }

    public static void shutdownDataSource(DataSource ds)
        throws SQLException
    {
        BasicDataSource bds = (BasicDataSource)ds;
        bds.close();
    }

    public static void main(String args[])
    {
    }

    static DataSource instance = setupDataSource();

}

