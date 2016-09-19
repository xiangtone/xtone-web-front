package com.mxjh2.info;

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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.LongSerializationPolicy;

/**
 * Servlet implementation class Gameorder
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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

      if(type.equalsIgnoreCase("1")){
    	  
    	  PrintWriter pw =	response.getWriter();
    	  int code=0;
    	  Orderdao od = new Orderdao();
    	  Orderinfo rsorder = od.selectById(order.getPhoneNum());
    	  if(rsorder==null){ 
    		 pw.write("{\"status\":\"error\"}");  
    	  }
    	  else{
    		  code = rsorder.getCodeNum();
    		 
      	    pw.write("{\"mobilecode\":\""+code+"\"}");
      	    pw.close();
      	  try {
  			Sentchit.sendTemplateSms(String.valueOf( order.getPhoneNum()), "ZD30010-0002", "@1@="+code);
  		} catch (Exception e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
    	  }
    	
    
    	  
    	
      }
	  if(type.equalsIgnoreCase("2")){
		  PrintWriter pw =	response.getWriter();
		  Orderdao od = new Orderdao();
		if(od.login(order.getPhoneNum(), order.getCodeNum())!=null){
			
			 pw.write("{\"status\":\"success\"}"); 
			    request.getSession().setAttribute("id", Long.valueOf(order.getPhoneNum()).toString());
		}
		else{
			 pw.write("{\"status\":\"error\"}"); 
		}
		  
		
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
