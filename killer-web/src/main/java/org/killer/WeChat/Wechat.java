package org.killer.WeChat;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.killer.dao.WechatCodeDao;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * Servlet implementation class WeChatTalkServlet
 */
/**
 * Servlet implementation class Testservlet
 */

@WebServlet("/Wechat")
public class Wechat extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private final String token = "zhujinghua";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Wechat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("开始签名校验");
		  String signature = request.getParameter("signature");
		  String timestamp = request.getParameter("timestamp");
		  String nonce = request.getParameter("nonce");
		  String echostr = request.getParameter("echostr");
		  
		  ArrayList<String> array = new ArrayList<String>();
		  array.add(signature);
		  array.add(timestamp);
		  array.add(nonce);
		  
		  //排序
		  String sortString = sort(token, timestamp, nonce);
		  //加密
		  String mytoken = Decript.SHA1(sortString);
		  //校验签名
		  if (mytoken != null && mytoken != "" && mytoken.equals(signature)) {
//		    System.out.println("签名校验通过。");
		    response.getWriter().println(echostr); //如果检验成功输出echostr，微信服务器接收到此输出，才会确认检验完成。
		  } else {
//		    System.out.println("签名校验失败。");
		  }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

		  
		     @Override
		     protected void doPost(HttpServletRequest request, HttpServletResponse response)
		              throws ServletException, IOException {
		
		          response.setContentType("text/html;charset=UTF-8");
		         PrintWriter pw = response.getWriter();
		         String wxMsgXml = IOUtils.toString(request.getInputStream(),"utf-8");
		          RequestTextMessage textMsg = null;
		          try {      
		                 textMsg = getRequestTextMessage(wxMsgXml);
		         } catch (Exception e) {                     
		                e.printStackTrace();                 
		       }                                                                       
		        StringBuffer replyMsg = new StringBuffer();
		        String receive = textMsg.getContent().trim();
		         String returnXml = null;
		        
		         if (textMsg != null&&!receive.equals("")) {
		        	 
		             if (checkgamename(receive)!=0) {

		            	 replyMsg.append("【礼包兑换码领取状态如下:】");
		            	 replyMsg.append("\n");

		                 String code = wechatservice(textMsg.getFromUserName().trim(),receive);
		                 String db = new WechatCodeDao().selectPackageContentByGamename(receive);
                         String [] dbary = db.split("/");
		                 replyMsg.append("\n"+code);
		                 replyMsg.append("\n");
		                 replyMsg.append("\n【礼包内容:】"); 
		                 for(String te:dbary){
		                 replyMsg.append("\n"+te);
		                 
		                 
		                 }

		             }
		             else{
		            	 replyMsg.append("领取礼包兑换码请输入正确的验证码!");
		            	 
		            	 
		             } 
		             
		             returnXml = getReplyTextMessage(replyMsg.toString(), textMsg.getFromUserName(),textMsg.getToUserName());
		         }
		         pw.println(returnXml);
		     }
		
		
		
	

	public static String sort(String token, String timestamp, String nonce) {
		  String[] strArray = { token, timestamp, nonce };
		  Arrays.sort(strArray);
		  
		  StringBuilder sbuilder = new StringBuilder();
		  for (String str : strArray) {
		    sbuilder.append(str);
		  }
		  
		  return sbuilder.toString();
		}
	
	
	 private String getReplyTextMessage(String content, String fromUserName,String toUserName){
		         
		         ReplyTextMessage we = new ReplyTextMessage();
	         we.setMessageType("text");
		        we.setFuncFlag("0");
		       we.setCreateTime(new Long(new Date().getTime()).toString());
		         we.setContent(content);
		          we.setToUserName(fromUserName);  
		         we.setFromUserName(toUserName);
		        XStream xstream = new XStream(new DomDriver()); 
		         xstream.alias("xml", ReplyTextMessage.class);
		         xstream.aliasField("ToUserName", ReplyTextMessage.class, "toUserName");
		        xstream.aliasField("FromUserName", ReplyTextMessage.class, "fromUserName");
		         xstream.aliasField("CreateTime", ReplyTextMessage.class, "createTime");
		         xstream.aliasField("MsgType", ReplyTextMessage.class, "messageType");
		          xstream.aliasField("Content", ReplyTextMessage.class, "content");
		         xstream.aliasField("FuncFlag", ReplyTextMessage.class, "funcFlag");
		          String xml =xstream.toXML(we);
		          return xml;
		     }
	 
	 
	 
	 
	 private RequestTextMessage getRequestTextMessage(String xml){
		              
		             XStream xstream = new XStream(new DomDriver());
		             
		            xstream.alias("xml", RequestTextMessage.class);
		             xstream.aliasField("ToUserName", RequestTextMessage.class, "toUserName");
		             xstream.aliasField("FromUserName", RequestTextMessage.class, "fromUserName");
		            xstream.aliasField("CreateTime", RequestTextMessage.class, "createTime");
		              xstream.aliasField("MsgType", RequestTextMessage.class, "messageType");
		             xstream.aliasField("Content", RequestTextMessage.class, "content");
		              xstream.aliasField("MsgId", RequestTextMessage.class, "msgId");
		            
		             RequestTextMessage requestTextMessage = (RequestTextMessage)xstream.fromXML(xml); 
		             return requestTextMessage;
		     }
	 private String wechatservice(String openId,String gameName){
			WechatCodeDao dao = new WechatCodeDao();
			String userCode = "";
			String codeForOpenId = dao.checkOpenId2(openId,gameName);
//			System.out.println(codeForOpenId);
//			System.out.println(openId);
			if(codeForOpenId!=null){
				userCode = " 您的兑换码为："+codeForOpenId+"";
			}else{
				String CodeNumber = dao.checkGameId2(gameName);
//				System.out.println(CodeNumber);
				if(CodeNumber!=null){
					Date date = new Date();
					long time = date.getTime();
					if(dao.updateOpenIdForId2(CodeNumber, openId,gameName,time)>0){
						userCode = "您的兑换码为："+CodeNumber+"";
					}else{
						userCode = "服务器繁忙，请稍后重试！";
					}
					
				}else{
					userCode = "礼包兑换功能暂未开通或兑换码已发放完！";
				} 
			}
			return userCode;
	 }
  private int checkgamename(String gamename){
	  WechatCodeDao cd = new WechatCodeDao();
	  return cd.checkgamename(gamename);
  }

}
