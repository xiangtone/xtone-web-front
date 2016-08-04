package com.lyxm.info;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Random;

import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.LongSerializationPolicy;

/**
 * Servlet implementation class Gameorder
 */
@WebServlet("/Gameorder")
public class Gameorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gameorder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String type = request.getParameter("type");
      String info = null;
      BufferedReader br = null;
      InputStreamReader isr = null;
      InputStream is = null;
      StringBuffer result = null;

      try
      {
      	is = request.getInputStream();
      	isr = new InputStreamReader(is);
      	br = new BufferedReader(isr);
      	result = new StringBuffer();
      	String line = "";
      	while ((line = br.readLine()) != null)
      	{
      		result.append(line);
      	}
      }
      catch(Exception ex)
      {
      	ex.printStackTrace();
      }
      finally
      {
      	try{if(br!=null)br.close();}catch(Exception ex){}
      	try{if(isr!=null)isr.close();}catch(Exception ex){}
      	try{if(is!=null)is.close();}catch(Exception ex){}
      }

      info = result.toString().trim();
      Logger LOG = Logger.getLogger(this.getClass());
      LOG.info(info);
      GsonBuilder gsonBuilder = new GsonBuilder();
		gsonBuilder.setLongSerializationPolicy(LongSerializationPolicy.STRING);
		Gson gson = gsonBuilder.create();
		Orderinfo order  = gson.fromJson(info, Orderinfo.class);
		String openId = null;
		HttpSession session = request.getSession();
		openId = (String)session.getAttribute("openid");
		order.setOpenId(openId);

      if(type.equalsIgnoreCase("1")){
    	  int code=0;
    	  Orderdao od = new Orderdao();
    	  Orderinfo rsorder = od.selectById(order.getPhoneNum());
    	  if(rsorder==null){
    		  code=(new   Random()).nextInt(9999);//   
    		  
    		  if(code<1000)code+=1000;    
    	  }
    	  else{
    		  code = 500;
    	  }
    	  PrintWriter pw =	response.getWriter();
    	    pw.write("{\"mobilecode\":\""+code+"\"}");
    	    pw.close();
    	  try {
    		  if(code!=500)
			Sentchit.sendTemplateSms(String.valueOf( order.getPhoneNum()), "ZD30010-0002", "@1@="+code);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    
    	
    	
      }
	  if(type.equalsIgnoreCase("2")){
		  PrintWriter pw =	response.getWriter();
		  Orderdao od = new Orderdao();
		  if(order.getInvitePhoneNum()!=0&&od.selectById(order.getInvitePhoneNum())==null){
			  pw.write("{\"status\":\"error\"}");
			  pw.close();
			  return ;
		  }
		  
    	  Orderinfo rsorder = od.selectById(order.getPhoneNum());
		  if(rsorder==null){
			  order.setAddTime(System.currentTimeMillis());
			  od.insert(order);
		  }
		  
		    pw.write("{\"status\":\"success\"}");
		    request.getSession().setAttribute("id", Long.valueOf(order.getPhoneNum()).toString());
		    pw.close();
		      
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
