package com.lyxm.info;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.WatchEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.common.util.ConnectionService;
import org.json.JSONArray;
import org.json.JSONObject;

import com.thoughtworks.xstream.mapper.Mapper.Null;

/**
 * Servlet implementation class Getjson_news
 */
@WebServlet("/content")
public class Content extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Content() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	      String str_sql="WHERE catalog ='events' ";
		
		  String contentType =request.getParameter("type"); //每页条数
		  if(contentType==null){
			  contentType="news"; 			  
		  }
		  
		  switch (contentType) {
		case "":
			contentType="news";
			break;
		case "新闻":
			contentType="news";
			break;
		case "活动":
			contentType="activity";
			break;
		case "公告":
			contentType="announce";
			break;
		case "精彩活动":
			contentType="events";
			break;
		case "游戏玩法":
			contentType="strategy";
			break;
		case "游戏攻略":
			contentType="play";
			break;
		default:
			break;
		}
		  
		  String contentId =request.getParameter("id"); //页码
		 
		  if(contentId==null){			
			  contentId ="1"; 			  
		  	
		  }
		  
		  String catalog_sql="CASE catalog \n WHEN 'news' THEN '新闻' \n WHEN 'announce' THEN '公告' \n  WHEN 'activity' THEN '活动'\n WHEN 'events' THEN '精彩活动' \n WHEN 'play' THEN '游戏攻略' \n  WHEN 'strategy' THEN '游戏玩法'\n  END as catalog";	  
		  response.setContentType("text/html;charset=UTF-8");

	         PrintWriter out = response.getWriter();

	         Statement stmt = null;
	         
	         ResultSet rs =null;
	         
	         Connection conn=null;
	         
	         
	         try {

//	               Class.forName("com.mysql.jdbc.Driver");
//
//	                conn = DriverManager.getConnection(
//	                          "jdbc:mysql://192.168.1.152:3306/cms_lyxm", "root", "123456");   
	        	 conn= ConnectionService.getInstance().getConnectionForLocal();
	               stmt = conn.createStatement();   
	               String sqlsel="SELECT id,title,"+catalog_sql+",content,FROM_UNIXTIME(lastModifyTime/1000,'%Y-%m-%d %h:%i:%s') as lastModifyTime,title FROM tbl_cms_contents where id= "+contentId+" and catalog='"+contentType+"'";
	               
	               System.out.println(sqlsel);
	               rs = stmt.executeQuery(sqlsel);
	               ResultSetMetaData metaData = rs.getMetaData();               
	               int columnCount=metaData.getColumnCount();
	               JSONArray array=new JSONArray();

	               while (rs.next()) {
	            	   JSONObject jsonObject=new JSONObject();
	            	   for (int i=1;i<=columnCount;i++){
	            		   String columName=metaData.getColumnName(i);
	            		   String value=rs.getString(columName);
	            		   jsonObject.put(columName, value);
	            		   
	            	   }
	                  array.put(jsonObject);
	            	   
	               }

	  
	               response.getWriter().write(array.toString());

	         } catch (Exception e) {

	               e.printStackTrace();

	         }finally{
		 			if (conn != null) {
						try {
							conn.close();
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}

		         }
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
