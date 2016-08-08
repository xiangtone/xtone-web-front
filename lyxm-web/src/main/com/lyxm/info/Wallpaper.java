package com.lyxm.info;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class Getjson_news
 */
@WebServlet("/wallpaper")
public class Wallpaper extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Wallpaper() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		  
	      
          String str_sql=" ";
		  String contentType =request.getParameter("type"); //每页条数
		  switch (contentType) {  

		  case "1":
			  str_sql=" where status=1 and catalog='wallpaper' ";//改成英文！！！！
		   break;
		  case "2":
			  str_sql=" where status=1 and  catalog='cutpic' ";//改成英文！！！！
		   break;
		 
		  default:
			break;
		}
		  
		  String pageId =request.getParameter("page"); //页码
		 
		  if(pageId==null){			
			  pageId ="1"; 			  
		  	
		  }
		  response.setContentType("text/html;charset=UTF-8");

	         PrintWriter out = response.getWriter();

	         Statement stmt = null;
	         
	         ResultSet rs =null;
	         
	         Connection conn=null;
	         
	         
	         try {
	        	 	
	        	  Integer coutint = 4;		
	    		  Integer pageint = Integer.valueOf(pageId);
	    		 int allcount=coutint.intValue()*(pageint.intValue()-1);
//	               Class.forName("com.mysql.jdbc.Driver");
//
//	                conn = DriverManager.getConnection(
//	                          "jdbc:mysql://192.168.1.152:3306/cms_lyxm", "root", "123456");   
	        	 
	        	   Integer countall = (Integer.valueOf(pageId)-1)*9;	
	        	   conn= ConnectionService.getInstance().getConnectionForLocal();
	               stmt = conn.createStatement();   
	      
				String sqlsel="SELECT id,title,CASE catalog \n WHEN 'wallpaper' THEN '精美壁纸' \n WHEN 'cutpic' THEN '游戏截图' \n   END as catalog,content,FROM_UNIXTIME(lastModifyTime/1000,'%Y-%m-%d %h:%i:%s') as lastModifyTime,title FROM tbl_cms_contents"+str_sql+" ORDER BY lastModifyTime limit "+allcount+",4";
	           /*    System.out.println(sqlsel);*/
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
