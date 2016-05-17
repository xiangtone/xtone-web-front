package org.mxkl.service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.jsp.JspWriter;

import org.mxkl.bean.Newsbean;
import org.mxkl.dao.Newsdao;



public class Service{
private static ArrayList<Newsbean> newslist = (ArrayList<Newsbean>)Newsdao.selectAll();

public static void mainnew(JspWriter out){
	
			int result = viewEachten(out,1,5);
			if(result==-2){
				
				try {
					out.println("<span class=\"label label-gg\" style=\"width:100%;color:red;\">暂无最新资讯！！！！</span>");
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}

			}

public static void newsnew(JspWriter out,int page){
	
	int result  = viewEachten(out, page, 10);
	if(result==-3){
		
		try {
			out.println("<span class=\"label label-gg\" style=\"width:100%;color:red;\">page参数错误!!!</span>");
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	yema(out,result);
	
}
public static int viewEachten(JspWriter out,int page,int num){
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd");

	int pagesize = newslist.size()/10+1;
	if(newslist.size()%10==0){
		pagesize-=1;
	}
	if(newslist.size()==0){
		return -2;
	}
	if(page>pagesize)
		return -1;
	if(num>10)
		return 0;
	if(page<1)
		return -3;
	if(num>newslist.size()-(page-1)*10)
		num = newslist.size()-(page-1)*10;
		
	  for(int i=(page-1)*10;i<(page-1)*10+num;i++){
  	  
  	  try {
  		  
			out.println("<a class=\"cat-list no-break\" href=\"content.jsp?id="+newslist.get(i).getId()+"\">"
					+  "<span class=\"label label-gg\">"+newslist.get(i).getCatalog().substring(5)+"</span>"
			         +"<span class=\"title \">"+newslist.get(i).getTitle()+"</span>"
			        + "<span class=\"size-small primary-note-color time\">"+sdf.format( newslist.get(i).getAddTime())+"</span>"+"</a>");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
		
			e.printStackTrace();
			
		}
  	
  	
	
  	  
  	 
    }
	  
		
	  return pagesize; 
}
public static void yema(JspWriter out,int num){
	  try {
		out.println(" <div class=\"wp-pagenavi\">");

	for(int i=1;i<=num;i++){
		
		
			out.println("<a href=\"news.jsp?page="+Integer.valueOf(i).toString()+"\" class=\"page larger\">"+Integer.valueOf(i).toString()+"</a>");
			
			
		
		
	}
	 out.println("</div>");
		} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
//	<a href="http://hs.xd.com/category/news/page/2/" class="page larger">2</a>
//	<a href="http://hs.xd.com/category/news/page/3/" class="page larger">3</a>
//	<a href="http://hs.xd.com/category/news/page/4/" class="page larger">4</a>
	}

}


//<span class="size-small primary-note-color time">04 - 20</span>
//</a>
