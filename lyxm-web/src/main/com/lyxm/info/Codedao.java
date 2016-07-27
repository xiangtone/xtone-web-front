package com.lyxm.info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.common.util.ConnectionService;

public class Codedao {
	public int updatePhoneForId(String id,String phone,long time,String giftName){
		PreparedStatement ps = null;
	    Connection con = null;
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("UPDATE tbl_exchange_codes SET phone=?,addtime=? WHERE id=? AND giftName=?");
			ps.setString(1, phone);
			ps.setLong(2, time);
			ps.setString(3, id);
			ps.setString(4, giftName);
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
	
	
	
	public String checkGameId(String giftName){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE addTime IS NULL AND giftName=? LIMIT 1");
			ps.setString(1, giftName);
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
	
	
	public String checkPhone(String phone,String giftName){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE phone = ? AND giftName=?");
			ps.setString(1, phone);
			ps.setString(2, giftName);
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
}
