package com.mxjh.wechat;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.LongSerializationPolicy;
import com.mxjh.info.Orderinfo;
import com.mxjh.info.Ticketsdao;

public class Test {

	public static void main(String[] args) {
		Ticketsdao dao = new Ticketsdao();
		String ticket = "";
		try {
			 ticket = Wechat.getTicketFromTx(dao.getToken("wx26d9b9ff5f0fc4ed"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
System.out.println(ticket);
	}
  
}
