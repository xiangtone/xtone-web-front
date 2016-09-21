package com.mxjh.wechat;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.LongSerializationPolicy;
import com.mxjh.info.Ticjsoninfo;
import com.mxjh.info.Ticketsdao;

public class Wechat {
public  static String getTicketFromTx(String token)throws Exception{
	String result="";
	String address = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token="+token+"&type=jsapi";
	URL url = new URL(address);
	URLConnection con = url.openConnection();
	 InputStream is = con.getInputStream();
		 BufferedReader br = new BufferedReader(new InputStreamReader(is));
		
		 String temp = "";
		 while (( temp = br.readLine()) != null) {
			result += temp;
		}
		 GsonBuilder gsonBuilder = new GsonBuilder();
			gsonBuilder.setLongSerializationPolicy(LongSerializationPolicy.STRING);
			Gson gson = gsonBuilder.create();
			Ticjsoninfo tick = gson.fromJson(result, Ticjsoninfo.class);
			result = tick.getTicket();
	return result;
}


public static String getTicketFromloc(){                //从缓存中获取ticket
	String ticket = "";
	Ticketsdao dao = new Ticketsdao();
    if(ticketIsValid()){ 
    	try {
    		
			ticket = getTicketFromTx(dao.getToken("wx26d9b9ff5f0fc4ed"));
			if(ticket!=null)
			dao.update(ticket, "wx26d9b9ff5f0fc4ed");
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }else{
    	ticket = dao.getTicket("wx26d9b9ff5f0fc4ed");
    	
    }	
	
	
	return ticket;
}



public static boolean ticketIsValid(){
	boolean result = true;
	long now = System.currentTimeMillis();
	Ticketsdao td = new Ticketsdao();
	if(td.getValidTime("wx26d9b9ff5f0fc4ed")>now+100){
		result = false;
	}
	return result;
}
}
