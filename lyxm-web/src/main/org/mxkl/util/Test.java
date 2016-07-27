package org.mxkl.util;

import java.util.Random;

import org.common.util.ConfigManager;
import org.common.util.GenerateIdService;
import org.mxkl.dao.Logdao;
import org.mxkl.service.Log;

import com.lyxm.info.Orderdao;
import com.lyxm.info.Orderinfo;

public class Test {

	public static void main(String[] args) {
		 String str="Hello World";  //待判断的字符串
	        String reg=".*ll.*";  //判断字符串中是否含有特定字符串ll
	        System.out.println(str.matches(reg));      
	}

}
