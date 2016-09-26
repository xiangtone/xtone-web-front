package com.lyxm.wechat;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.common.util.ConfigManager;
import org.common.util.ConnectionService;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class ServiceScan {

  private static final Logger LOG = Logger.getLogger(ServiceScan.class);

  private static ServiceScan instance = new ServiceScan();

  public static ServiceScan getInstance() {
    return instance;
  }

  public void scan() {
    Long now = System.currentTimeMillis();
    String sql = "select appId from `tbl_wechat_tokens` where nextTime<" + now;
    PreparedStatement ps = null;
    Connection con = null;
    ResultSet rs = null;
    try {
      con = ConnectionService.getInstance().getConnectionForLocal();
      ps = con.prepareStatement(sql);
      int m = 0;
      rs = ps.executeQuery();
      while (rs.next()) {
        m = processToken(rs, m);
      }
      if (m == 0) {
        LOG.info("scan nothing");
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (con != null) {
        try {
          con.close();
        } catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }
      }
    }
  }

  private int processToken(ResultSet rs, int m) throws SQLException, Exception {
    String secret = ConfigManager.getConfigData(rs.getString("appId"));
    if (secret != null && secret.length() >= 32) {
      TokenGet token = new TokenGet();
      token.setAppId(rs.getString("appId"));
      token.setSecret(secret);
      GsonBuilder gsonBuilder = new GsonBuilder();
      Gson gson = gsonBuilder.create();
      String rsp = token.get();
      LOG.info("receive from tencent:" + rsp);
      RspToken rspToken = gson.fromJson(rsp, RspToken.class);
      if (rspToken.verify()) {
        rspToken.setAppId(rs.getString("appId"));
        rspToken.updateDb();
      }
      m++;
    }
    return m;
  }

  public static void main(String[] args) {
    ServiceScan ss = ServiceScan.getInstance();
    ss.scan();
  }
}
