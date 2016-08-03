package org.mxkl.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.common.util.ConfigManager;
import org.common.util.ConnectionService;
import org.common.util.GenerateIdService;
import org.mxkl.util.LogConnectionService;

public class Mxklloginsert implements Runnable {
  
  private int LOG_ID;
  private Long id ; 
  private String gamename ; 
  private String from;
  private String jsession;
  private String refer;
  private String userAgent;
  private String ip;
  

  public Mxklloginsert(int logid,String gamename,String from,String jsession,String refer,String userAgent,String ip) {
	    super();
	    this.LOG_ID = logid;
	    this.gamename = gamename;
	    this.from = from;
	    this.jsession = jsession;
	    this.refer = refer;
	    this.userAgent = userAgent;
	    this.ip = ip;
	  }
  public String getFrom() {
	return from;
}

public void setFrom(String from) {
	this.from = from;
}

public String getJsession() {
	return jsession;
}

public void setJsession(String jsession) {
	this.jsession = jsession;
}

public String getRefer() {
	return refer;
}

public void setRefer(String refer) {
	this.refer = refer;
}
public int getLOG_ID() {
	return LOG_ID;
}
public void setLOG_ID(int lOG_ID) {
	LOG_ID = lOG_ID;
}
public String getUserAgent() {
	return userAgent;
}

public void setUserAgent(String userAgent) {
	this.userAgent = userAgent;
}

public String getIp() {
	return ip;
}

public void setIp(String ip) {
	this.ip = ip;
}

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  
  public String getGamename() {
	return gamename;
}

public void setGamename(String gamename) {
	this.gamename = gamename;
}


@Override
  public void run() {
	System.out.println();
    setId(GenerateIdService.getInstance().generateNew(Integer.parseInt(ConfigManager.getConfigData("server.id")), "clicks", 1));
//    System.out.println(this.id);
    if(this.id > 0){
      PreparedStatement ps = null;
      Connection con = null;
      try{
        con = LogConnectionService.getInstance().getConnectionForLocal();
        ps = con.prepareStatement("insert into `log_async_generals` (id,logId,para01,para02,para03,para04,para05,para06) values (?,?,?,?,?,?,?,?)");
        int m = 1;
        ps.setLong(m++, this.getId());
        ps.setInt(m++, LOG_ID);
        ps.setString(m++,this.from);
        ps.setString(m++,this.userAgent);
        ps.setString(m++,this.ip);       
        ps.setString(m++,this.gamename);
        ps.setString(m++,this.jsession);
        ps.setString(m++,this.refer);
        ps.executeUpdate();
      }catch(Exception e){
        // TODO Auto-generated catch block
        e.printStackTrace();
      }finally{
        if(con != null){
          try{
            con.close();
          }catch(SQLException e){
            // TODO Auto-generated catch block
            e.printStackTrace();
          }
        }
      }
    }
  }

}