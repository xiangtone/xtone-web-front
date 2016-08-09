package com.lyxm.info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.common.util.ConnectionService;
//import org.mxkl.info.Code;

public class Orderdao {
	
	public Orderinfo selectById(long id){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("select * from tbl_orders_users where id = ?");
			ps.setLong(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				Orderinfo orderinfo = new Orderinfo();
				orderinfo.setPhoneNum(rs.getLong("id"));
				orderinfo.setCodeNum(rs.getInt("codeNum"));
				orderinfo.setInvitePhoneNum(rs.getLong("invitePhonenum"));
				orderinfo.setAddTime(rs.getLong("addTime"));
				orderinfo.setGift(rs.getString("gift"));
				orderinfo.setOpenId(rs.getString("wechatOpenId"));
				return orderinfo;
			}
		} catch (Exception e) {
			// TODO: handle exception
			return null;
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
	public int insert(Orderinfo order){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("insert into tbl_orders_users values(?,?,?,?,?,?)");
		    ps.setLong(1, order.getPhoneNum());
		    ps.setInt(2, order.getCodeNum());
		    ps.setLong(3, order.getInvitePhoneNum());
		    ps.setLong(4, order.getAddTime());
		    ps.setString(5, order.getGift());
		    ps.setString(6, order.getOpenId());
		    ps.execute();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
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
	    return 1;
	}	
	
	public int updateGift(Orderinfo order){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("update tbl_orders_users set gift=? where id = ?");
			ps.setString(1, order.getGift());
			ps.setLong(2, order.getPhoneNum());
			ps.executeLargeUpdate();
            
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
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
	    return 1;
	}	
	
	public int count(String phone){
		int r = 0;
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("SELECT COUNT(*) as s FROM `tbl_orders_users` WHERE invitepHOnenum = ?");
			ps.setString(1, phone);
			rs = ps.executeQuery();
			if(rs.next()){
				 r = rs.getInt("s"); 
			
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
			
		}finally{
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
        return r;
		}
	   
		
		
	}
	public Orderinfo login(long id,int codeNum){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("select * from tbl_orders_users where id = ? and codeNum = ?");
			ps.setLong(1, id);
			ps.setInt(2, codeNum);
			rs = ps.executeQuery();
			if(rs.next()){
				Orderinfo orderinfo = new Orderinfo();
				orderinfo.setPhoneNum(rs.getLong("id"));
				orderinfo.setCodeNum(rs.getInt("codeNum"));
				orderinfo.setInvitePhoneNum(rs.getLong("invitePhonenum"));
				orderinfo.setAddTime(rs.getLong("addTime"));
				orderinfo.setGift(rs.getString("gift"));
				orderinfo.setOpenId(rs.getString("wechatOpenId"));
				return orderinfo;
			}
		} catch (Exception e) {
			// TODO: handle exception
			return null;
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
	
	
	
	
	public int deleteUserById(String id){
		PreparedStatement ps = null;
	    Connection con = null;
	    ResultSet rs = null;
		try {
			con = ConnectionService.getInstance().getConnectionForLocal();
			ps = con.prepareStatement("DELETE FROM `tbl_orders_users`  WHERE id = ?");
		    ps.setString(1, id);
		   
		    ps.execute();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
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
	    return 1;
	}	
}
