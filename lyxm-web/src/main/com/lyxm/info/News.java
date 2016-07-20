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
@WebServlet("/news")
public class News extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public News() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		

		 String newstype=request.getParameter("type");  //新闻类型
		 if(newstype==null){
			 
			 newstype="0";
		 }
		 
		 
		 String str_sql="";
		 
		  switch (newstype) {  
		  case "0":
			  str_sql=" where catalog in('news','announce','activity')";
			break;
		  case "1":
			  str_sql=" where catalog='news'";//改成英文！！！！
		   break;
		  case "2":
			  str_sql=" where catalog='activity'";//改成英文！！！！
		   break;
		  case "3":
			  str_sql=" where catalog='announce'";//改成英文！！！！
		   break;
		  case "4":
			  str_sql=" where catalog='wallpaper'";//改成英文！！！！
		   break;
		  default:
			break;
		}
		  	String newscount =request.getParameter("count"); //每页条数
		  if(newscount==null){
			 newscount="5"; 			  
		  }
		  
		  String pagenum =request.getParameter("pagenum"); //页码
		 
		  if(pagenum==null){			
			  pagenum ="1"; 			  
		  	
		  }
		  Integer coutint = Integer.valueOf(newscount);		
		  Integer pageint = Integer.valueOf(pagenum);
		 int allcount=coutint.intValue()*(pageint.intValue()-1);
		 System.out.println(allcount);
		  response.setContentType("text/html;charset=UTF-8");

	         PrintWriter out = response.getWriter();

	         Statement stmt = null;
	         
	         ResultSet rs =null;
	         
	         Connection conn=null;
	         
	         
	         try {

//                Class.forName("com.mysql.jdbc.Driver");
//
//                conn = DriverManager.getConnection(
//                          "jdbc:mysql://192.168.1.152:3306/cms_lyxm", "root", "123456");   
	        	   conn= ConnectionService.getInstance().getConnectionForLocal();
	               stmt = conn.createStatement();
	               String sqlsel="SELECT id,CASE catalog \n WHEN 'news' THEN '新闻' \n WHEN 'announce' THEN '公告' \n  WHEN 'activity' THEN '活动'\n END as catalog, \n CONCAT(SUBSTRING(tbl_cms_contents.lastModifytime,1,4),'-',SUBSTRING(tbl_cms_contents.lastModifytime,5,2)) as lastModifyTime,title FROM tbl_cms_contents "+str_sql+" ORDER BY priority DESC limit "+allcount+","+newscount;
	             //  System.out.println(sqlsel);
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

	               System.out.println(array.toString());
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
