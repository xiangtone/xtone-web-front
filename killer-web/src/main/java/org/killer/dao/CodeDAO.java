package org.killer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.common.util.ConnectionService;
import org.killer.info.Code;

public class CodeDAO {
	
	public long checkOpenId(String openId){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE wechatOpenId = ? AND gameName='mengxiangkunlun'");
			ps.setString(1, openId);
			rs = ps.executeQuery();
			if(rs.next()){
				return rs.getLong("id");
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
	    return 0L;
	}
	
	public Long checkGameId(){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE matchOpenIdTime IS NULL AND gameName='mengxiangkunlun' LIMIT 1");
			rs = ps.executeQuery();
			
			if(rs.next()){
				return rs.getLong("id");
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
		return 0L;
	}
	
	public int updateOpenIdForId(Long id,String openId,long time){
		PreparedStatement ps = null;
	    Connection con = null;
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("UPDATE tbl_exchange_codes SET wechatOpenId=?,matchOpenIdTime=? WHERE id=? AND gameName='mengxiangkunlun'");
			ps.setString(1, openId);
			ps.setLong(2, time);
			ps.setLong(3, id);
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
	public long checkOpenId2(String openId,String gameName){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE wechatOpenId = ? AND gameName=?");
			ps.setString(1, openId);
			ps.setString(2, gameName);
			rs = ps.executeQuery();
			if(rs.next()){
				return rs.getLong("id");
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
	    return 0L;
	}
	public int updateOpenIdForId2(Long id,String openId,String gameName,long time){
		PreparedStatement ps = null;
	    Connection con = null;
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("UPDATE tbl_exchange_codes SET wechatOpenId=?,matchOpenIdTime=? WHERE id=? AND gameName=?");
			ps.setString(1, openId);
			ps.setLong(2, time);
			ps.setLong(3, id);
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
	
	public Long checkGameId2(String gameName){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE matchOpenIdTime IS NULL AND gameName=? LIMIT 1");
			ps.setString(1, gameName);
			rs = ps.executeQuery();
			
			if(rs.next()){
				return rs.getLong("id");
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
		return 0L;
	}
	public static void main(String[] args) {
		CodeDAO dao = new CodeDAO();
		System.out.println(dao.checkOpenId("o28_Sv9EUNCmNmn3NjN7lw9TdxXo"));
	}
}
