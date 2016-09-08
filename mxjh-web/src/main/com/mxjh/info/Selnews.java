package com.mxjh.info;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
 * Servlet implementation class Selnews
 */
@WebServlet("/Selnews")
public class Selnews extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Selnews() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      String newstype=request.getParameter("type");  //新闻类型
		 if(newstype==null){	 
			 newstype="00";
		 }	 
		 String str_sql="";
		  switch (newstype) {  
		  case "00":
			  str_sql=" where status=1 and catalog in('news','announce','activity') ";
			break;
		  case "01":
			  str_sql=" where status=1 and catalog='news' ";//改成英文！！！！
		   break;
		  case "02":
			  str_sql=" where status=1 and catalog='announce' ";//改成英文！！！！
		   break;
		  case "03":
			  str_sql=" where status=1 and catalog='activity' ";//改成英文！！！！
		   break;
		  case "11":
			  str_sql=" where status=1 and catalog='events' ";//改成英文！！！！
		   break;
		  case "21":
			  str_sql=" where status=1 and catalog='strategy' ";//改成英文！！！！
		   break;
		  case "22":
			  str_sql=" where status=1 and catalog='play' ";//改成英文！！！！
		   break;
		  case "31":
			  str_sql=" where status=1 and catalog='wallpaper' ";//改成英文！！！！
		   break;
		  case "32":
			  str_sql=" where status=1 and catalog='cutpic' ";//改成英文！！！！
		   break;
		  case "41":
			  str_sql=" where status=1 and catalog='links' ";//改成英文！！！！
		   break;
		  default:
			break;
		}
		  	String newscount =request.getParameter("count"); //每页条数
		  if(newscount==null){
			 newscount="4"; 			  
		  }
		  String pagenum =request.getParameter("pagenum"); //页码		 
		  if(pagenum==null){			
			  pagenum ="1"; 			  	  	
		  }
		  Integer coutint = Integer.valueOf(newscount);		
		  Integer pageint = Integer.valueOf(pagenum);
		 int allcount=coutint.intValue()*(pageint.intValue()-1);
		 //System.out.println(allcount);
		  response.setContentType("text/html;charset=UTF-8");

	         PrintWriter out = response.getWriter();

	         Statement stmt = null;
	         
	         ResultSet rs =null;
	         
	         Connection conn=null;
	         
	         
	         try {
	        	   conn= ConnectionService.getInstance().getConnectionForLocal();
	               stmt = conn.createStatement();
	               String sqlsel="SELECT id,CASE catalog \n WHEN 'news' THEN '新闻' \n WHEN 'announce' THEN '公告' \n WHEN 'activity' THEN '活动'\n WHEN 'events' THEN '精彩活动'\n WHEN 'strategy' THEN '游戏玩法'\n WHEN 'play' THEN '游戏攻略'\n WHEN 'wallpaper' THEN '精彩壁纸'\n WHEN 'cutpic' THEN '游戏截图' \n END as catalog,\n content,\n subTitle, \n FROM_UNIXTIME(lastModifyTime/1000,'%m-%d') as lastModifyTime,title FROM tbl_cms_contents "+str_sql+" ORDER BY priority DESC, lastModifyTime DESC limit "+allcount+","+newscount;
	               // System.out.println(sqlsel);
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

	               //System.out.println(array.toString());
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
