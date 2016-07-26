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
        String testStr = "qqqqqqqqqqq,xxxxxxxxxxx";  
        String[] strAry = testStr.split(",");
        for(String s :strAry){
        	System.out.println(s);
        }
                  
                
	}

}
