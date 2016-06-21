package org.killer.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.common.util.ConfigManager;
import org.common.util.ConnectionService;
import org.common.util.GenerateIdService;

public class Te implements Runnable {
 
	 int i ;
 public Te(int b) {
	i = b ;
}
	  public void run() {
		
	   System.out.println(i);
	    }
	








public static void main(String[] args) {

}
}

	

   