package org.mxkl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.mxkl.bean.Logbean;
import org.mxkl.util.LogConnectionService;

public class Logdao {
	static PreparedStatement ps = null;
     static Connection con = LogConnectionService.getInstance().getConnectionForLocal();
     static ResultSet rs = null;
   public static ArrayList<Logbean> selecttodaybypara01(String gamename){             //通过para01(游戏名)的值查询今天的日志
	   ArrayList<Logbean> list = new ArrayList<Logbean>();
	   Logbean logbean ;
	   try {
		ps = con.prepareStatement("select * from log_async_generals where para01=?");
		ps.setString(1, gamename);
		rs = ps.executeQuery();
		while(rs.next()){
			logbean = new Logbean();
			logbean.setId(rs.getLong("id"));
			logbean.setLogid(rs.getInt("logid"));
			logbean.setPara01(rs.getString("para01"));
			list.add(logbean);
			
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   
	   return list;
	   
	   
   }
   public static ArrayList<Logbean> selectlast100bypara01(String gamename){             //通过para01P(游戏名)的值查询前一百天的日志
	   ArrayList<Logbean> list = new ArrayList<Logbean>();
	   Logbean logbean ;
	   try {
		ps = con.prepareStatement("select * from log_async_last_hundred_days where para01=?");
		ps.setString(1, gamename);
		rs = ps.executeQuery();
		while(rs.next()){
			logbean = new Logbean();
			logbean.setId(rs.getLong("id"));
			logbean.setLogid(rs.getInt("logid"));
			logbean.setPara01(rs.getString("para01"));
			list.add(logbean);
			
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   
	   return list;
	   
	   
   }
         
     
}
