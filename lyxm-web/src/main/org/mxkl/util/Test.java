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
		Orderdao dao = new Orderdao();
		
		
		System.out.println(dao.count("15700804472"));
		
	}

}
