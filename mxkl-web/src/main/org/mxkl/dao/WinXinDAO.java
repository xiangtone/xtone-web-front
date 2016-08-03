package org.mxkl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.common.util.ConnectionService;

public class WinXinDAO {
	
	public String getAccess_tonken(String appid){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT token FROM tbl_wechat_tokens WHERE appId = ? ORDER BY lastModTime DESC LIMIT 1");
			ps.setString(1, appid);
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
		return "";
	}
	
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
}
