package org.killer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.common.util.ConnectionService;
import org.killer.info.Code;

public class WechatCodeDao {
	
	public int checkgamename(String gamename){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    int stuts=0;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("select id from tbl_games where gamename = ?");
			ps.setString(1, gamename);
			rs = ps.executeQuery();
			if(rs.next())
			stuts = rs.getInt("id");
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
	    return stuts;
		
		
		
		
	}
	public String checkOpenId2(String openId,String gameName){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT t1.id FROM tbl_exchange_codes t1,tbl_games t2 WHERE t1.gameName=t2.id and t1.wechatOpenId = ? AND t2.gameName=?");
			ps.setString(1, openId);
			ps.setString(2, gameName);
			rs = ps.executeQuery();
			if(rs.next()){
				return rs.getString("id");
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
	public int updateOpenIdForId2(String id,String openId,String gameName,long time){
		PreparedStatement ps = null;
	    Connection con = null;
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("UPDATE tbl_exchange_codes t1,tbl_games t2 SET t1.wechatOpenId=?,t1.matchOpenIdTime=? WHERE t1.gamename=t2.id and t1.id=? AND t2.gameName=?");
			ps.setString(1, openId);
			ps.setLong(2, time);
			ps.setString(3, id);
			ps.setString(4, gameName);
			return ps.executeUpdate();
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
	
	public String checkGameId2(String gameName){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT t1.id FROM tbl_exchange_codes t1,tbl_games t2 WHERE t1.gameName=t2.id and matchOpenIdTime IS NULL AND t2.gameName=? LIMIT 1");
			ps.setString(1, gameName);
			rs = ps.executeQuery();
			
			if(rs.next()){
				return rs.getString("id");
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
	public static void main(String[] args) {
		CodeDAO dao = new CodeDAO();
		System.out.println(dao.checkOpenId("o28_Sv9EUNCmNmn3NjN7lw9TdxXo"));
	}
}
