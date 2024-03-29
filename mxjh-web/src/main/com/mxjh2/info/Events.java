package com.mxjh2.info;

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
@WebServlet("/events")
public class Events extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Events() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	      String str_sql="WHERE status=1 and catalog ='events' ";
		
		  String newscount =request.getParameter("count"); //每页条数
		  if(newscount==null){
			 newscount="15"; 			  
		  }
		  
		  String pagenum =request.getParameter("pagenum"); //页码
		 
		  if(pagenum==null){			
			  pagenum ="1"; 			  
		  	
		  }
		  Integer coutint = Integer.valueOf(newscount);		
		  Integer pageint = Integer.valueOf(pagenum);
		 int allcount=coutint.intValue()*(pageint.intValue()-1);
		
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
	               String sqlsel="SELECT id,'精彩活动' as catalog,FROM_UNIXTIME(lastModifyTime/1000,'%m-%d') as lastModifyTime,title FROM tbl_cms_contents "+str_sql+" ORDER BY lastModifyTime DESC limit "+allcount+","+newscount;
	               //System.out.println(sqlsel);
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
