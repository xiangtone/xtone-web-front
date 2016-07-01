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
		                 String db = null;
		                 
		                 if(receive.equals("1d095528ec191047c59a7fe2adab47ab"))
		                	 db = "200绑元\n银两*60000\n内息6000\n装备初级强化石*10\n灵宝初级进阶石*10\n境界丹*1";
		                 if(receive.equals("3cf80f113461db4a67c9721c58b15d86"))
		                	 db = "30钻石\n2000金币\n针织·初星*3\n染料·初星*3";
		                 if(receive.equals("a2369958a9645eac52b58a8134e2ef5a"))
		                	 db = "钻石*88\n金币*500000\n中经验瓶*30\n中级升阶卡*30\n高级经验卡*30\n洗练卡*200\n精炼石*200\n绿色结晶*50\n紫色结晶*20";
		                
		                 if(receive.equals("6f3ff53b44a071200d9ca3098fa861b0"))
		                
		                	 db = "高级喷漆*2\n舞团结晶*10";
		                 
		                 if(receive.equals("d75eccf4e68658bfb738679f9b2445ae"))
		                	 db = "元宝 50\n铜币5000\n凰血石*3\n精英紫晶 *3\n至尊法宝袋*1";
		                 
		                 if(receive.equals("76e9468cd3b99d034481927975a16b68"))
		                	 db = "木*1000\n石*1000\n金钱*1000\n元宝*60";
		                 if(receive.equals("4fc51c170a8fc6c70d20c9636c9a83c8"))
		                	 db = "仙灵进阶丹*3\n幸运石*1\n藏宝图*2\n银魂币*1000";
		                
		                
		                 replyMsg.append("\n"+code);
		                 replyMsg.append("\n");
		                 replyMsg.append("\n【礼包内容:】");
		                 replyMsg.append("\n"+db);
		                 
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
