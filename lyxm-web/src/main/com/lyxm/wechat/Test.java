package com.lyxm.wechat;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.LongSerializationPolicy;
import com.lyxm.info.Orderinfo;

public class Test {

	public static void main(String[] args) {
		 GsonBuilder gsonBuilder = new GsonBuilder();
			gsonBuilder.setLongSerializationPolicy(LongSerializationPolicy.STRING);
			Gson gson = gsonBuilder.create();
			Orderinfo order  = gson.fromJson("{qq:\"123\"}", Orderinfo.class);
			System.out.println(order.getQq());

	}

}
