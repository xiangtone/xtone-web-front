package com.mxjh2.info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.common.util.ConfigManager;
import org.common.util.ConnectionService;

public class Ticketsdao {
public String getToken(String appId){    // get token form tbl_wechat_tokens

	PreparedStatement ps = null;
    Connection con = null;
    ResultSet rs = null;
    
    try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		
		ps = con.prepareStatement("select token from tbl_wechat_tokens where appid=?");
		ps.setString(1, appId);
		rs = ps.executeQuery();
		
		if(rs.next()){
			return rs.getString("token");
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally{
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	return null;
	
}	
	
public String getTicket(String appId){

	PreparedStatement ps = null;
    Connection con = null;
    ResultSet rs = null;
    
    try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		
		ps = con.prepareStatement("select ticket from tbl_wechat_tickets where appid=?");
		ps.setString(1, appId);
		rs = ps.executeQuery();
		
		if(rs.next()){
			return rs.getString("ticket");
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally{
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	return null;
	
}		

public long getValidTime(String appId){

	PreparedStatement ps = null;
    Connection con = null;
    ResultSet rs = null;
    
    try {
		con = ConnectionService.getInstance().getConnectionForLocal();
		
		ps = con.prepareStatement("select validtime from tbl_wechat_tickets where appid=?");
		ps.setString(1, appId);
		rs = ps.executeQuery();
		
		if(rs.next()){
			return rs.getLong("validtime");
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally{
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	return 0;
	
}	


public int update(String ticket,String appId){

    int status;
    String sql = "update `tbl_wechat_tickets` set ticket=?,nextTime=?,lastModTime=?,validTime=? where appId=?";
    PreparedStatement ps = null;
    Connection con = null;
    ResultSet rs = null;
    try {
      con = ConnectionService.getInstance().getConnectionForLocal();
      ps = con.prepareStatement(sql);
      int m = 1;
      Long now = System.currentTimeMillis();
      ps.setString(m++, ticket);
      ps.setLong(m++, Long.parseLong(ConfigManager.getConfigData("nextSuccessInterval")) + now);
      ps.setLong(m++, now);
      ps.setLong(m++, 2*3600* 1000 + now);
      ps.setString(m++, appId);
     status = ps.executeUpdate();
     return status;
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (con != null) {
        try {
          con.close();
        } catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
      }
    }
  return 0;
  
}
}
