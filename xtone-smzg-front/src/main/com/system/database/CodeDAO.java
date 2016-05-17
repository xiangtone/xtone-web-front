package com.system.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.common.util.ConnectionService;
import org.demo.info.Code;

public class CodeDAO {
	
	public int checkOpenId(String openId){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = CodeService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE wechatOpenId = ? AND gameName='mengxiangkunlun'");
			ps.setString(1, openId);
			rs = ps.executeQuery();
			if(rs.next()){
				return rs.getInt("id");
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
	
	public List<Integer> checkGameId(){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
	    List<Integer> list = null;
	    try {
			con = CodeService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT id FROM tbl_exchange_codes WHERE matchOpenIdTime IS NULL AND gameName='mengxiangkunlun'");
			rs = ps.executeQuery();
			list = new ArrayList<Integer>();
			while(rs.next()){
				list.add(rs.getInt("id"));
			}
			return list;
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
		return list;
	}
	
	public int updateOpenIdForId(int id,String openId,long time){
		PreparedStatement ps = null;
	    Connection con = null;
	    try {
			con = CodeService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("UPDATE tbl_exchange_codes SET wechatOpenId=?,matchOpenIdTime=? WHERE id=? AND gameName='mengxiangkunlun'");
			ps.setString(1, openId);
			ps.setLong(2, time);
			ps.setInt(3, id);
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