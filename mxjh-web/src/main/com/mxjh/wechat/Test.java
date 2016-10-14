package com.mxjh.wechat;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.LongSerializationPolicy;
import com.mxjh.info.Orderinfo;
import com.mxjh.info.Ticketsdao;

public class Test {

	public static void main(String[] args) {
	try {
		// wx26d9b9ff5f0fc4ed=8b1de189eefa9c0d78c1a847122eaf38
		TokenGet tk =  new TokenGet();
		tk.setAppId("wx26d9b9ff5f0fc4ed");
		tk.setSecret("8b1de189eefa9c0d78c1a847122eaf38");
		System.out.println(tk.get());
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  
}
}