package org.mxkl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.common.util.ConnectionService;

public class QqxzCodeDAO {
	
	public long checkOpenId(String openId){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE wechatOpenId = ? AND gameName='cangqiongxianzun'");
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
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE matchOpenIdTime IS NULL AND gameName='cangqiongxianzun' LIMIT 1");
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
			ps = con.prepareStatement("UPDATE tbl_exchange_codes SET wechatOpenId=?,matchOpenIdTime=? WHERE id=? AND gameName='cangqiongxianzun'");
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
	
	public static void main(String[] args) {
		CodeDAO dao = new CodeDAO();
		System.out.println(dao.checkOpenId("o28_Sv9EUNCmNmn3NjN7lw9TdxXo"));
	}
}
