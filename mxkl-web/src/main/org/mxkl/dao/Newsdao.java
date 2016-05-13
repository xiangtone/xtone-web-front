package org.mxkl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.common.util.ConnectionService;
import org.mxkl.bean.Newsbean;

public class Newsdao {
private static Connection con;
private static Newsbean newsbean;
private static ArrayList<Newsbean> list;
private static PreparedStatement pre;
private static String sql;
private static ResultSet result;
public static List<Newsbean> selectAll(){
	con = ConnectionService.getInstance().getConnectionForLocal();
	sql = "select * from tbl_cms_contents";
	list = new ArrayList<Newsbean>();
	try {
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while(result.next()){
			newsbean = new Newsbean();
			newsbean.setId(result.getInt("id"));
			newsbean.setTitle(result.getString("title"));
			newsbean.setAddTime(result.getLong("lastModifyTime"));
			newsbean.setCatalog(result.getString("catalog"));
			newsbean.setContent(result.getString("content"));
			list.add(newsbean);
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return list;
}
}
