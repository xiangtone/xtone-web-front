package org.killer.util;

import java.sql.Connection;

import org.common.util.ConfigManager;
import org.common.util.GenerateIdService;
import org.killer.dao.Logdao;
import org.killer.service.Log;

import com.x.interfaceRedirect.ConnectionServiceConfig;

public class Test {

	public static void main(String[] args) {
		Connection con =  ConnectionServiceConfig.getInstance().getConnectionForLocal();
		System.out.println(con);
  
	}

}
