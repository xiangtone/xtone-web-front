package org.mxkl.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.jsp.JspWriter;

import org.mxkl.bean.Newsbean;
import org.mxkl.dao.Newsdao;

public class Service{
private static ArrayList<Newsbean> newslist = (ArrayList<Newsbean>)Newsdao.selectAll();

public static void mainnew(JspWriter out,int num){
	int i = 0;
	
	  for(Newsbean news : newslist){
    	  if(i<num){
    	  try {
    		  i++;
			out.println("<a class=\"cat-list no-break\" href=\"http://hs.xd.com/1594/\">"
					+  "<span class=\"label label-gg\">"+news.getCatalog()+"</span>"
			         +"<span class=\"title \">"+news.getTitle()+"</span>"
			        + "<span class=\"size-small primary-note-color time\">"+news.getLastModifyTime()+"</span>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	  }else
    		  break;
    	  
      }
			

			}




}

//<a class="cat-list no-break" href="http://hs.xd.com/1594/">
//<span class="label label-gg">公告</span>
//<span class="title ">五月战争季—至尊问鼎即将开启</span>
//<span class="size-small primary-note-color time">04 - 20</span>
//</a>
