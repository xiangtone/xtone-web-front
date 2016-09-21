package com.mxjh2.info;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Present
 */
@WebServlet("/Present")
public class Present extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Present() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(1);
		HttpSession session = request.getSession();
		PrintWriter pw = response.getWriter();
		String userCode = "";
		String phone = null;
		try{
		phone = (String)session.getAttribute("id");}
		catch(Exception ex){
			ex.printStackTrace();System.out.println(2);
		}
	    if(phone==null){
	    	System.out.println(3);
	    	pw.write("{\"status\":\"none\"}");
	    	}
	    else{
	    	long phoneNum = Long.parseLong(phone);
	    	String giftNum = request.getParameter("giftNum");
	    	Codedao dao = new Codedao();
	    	Orderdao orderdao = new Orderdao();
	        if(giftNum.equalsIgnoreCase("1")){
	        	String codeForPhone = dao.checkPhone(phone,"meiti");
	        	
	        	if(codeForPhone!=null){
	    			userCode = codeForPhone+"";
	    		}else{
	    			String CodeNumber = dao.checkGameId("meiti");
	    			if(CodeNumber!=null){
	    				Date date = new Date();
	    				long time = date.getTime();
	    				if(dao.updatePhoneForId(CodeNumber, phone,time,"meiti")>0){
	    					userCode = CodeNumber+" ";
	    				}else{
	    					userCode = "服务器繁忙，请稍后重试！";
	    				}
	    				
	    			}else{
	    				userCode = "兑换码已发放完！";
	    			} 
	    		}
	        	System.out.println(userCode);
	        	pw.write("{\"code\":\""+userCode+"\"}");
	        }
	    	if(giftNum.equalsIgnoreCase("2")){
	    		if(orderdao.count(phone)<3){  System.out.println(phone+"--"+orderdao.count(phone));
	    			pw.write("{\"status\":\"cant\"}");
	    		}
	    		else{
//	    			礼包2

		        	String codeForPhone = dao.checkPhone(phone,"baiyin");
		        	
		        	if(codeForPhone!=null){
		    			userCode = codeForPhone+"";
		    		}else{
		    			String CodeNumber = dao.checkGameId("baiyin");
		    			if(CodeNumber!=null){
		    				Date date = new Date();
		    				long time = date.getTime();
		    				if(dao.updatePhoneForId(CodeNumber, phone,time,"baiyin")>0){
		    					userCode = CodeNumber+" ";
		    				}else{
		    					userCode = "服务器繁忙，请稍后重试！";
		    				}
		    				
		    			}else{
		    				userCode = "兑换码已发放完！";
		    			} 
		    		}
		        	
		        	pw.write("{\"code\":\""+userCode+"\"}");
//	    			礼包2
	    		}
	    		
	    	}
            if(giftNum.equalsIgnoreCase("3")){
            	if(orderdao.count(phone)<5){
	    			pw.write("{\"status\":\"cant\"}");
	    		}
            	else{
//	    			礼包3

		        	String codeForPhone = dao.checkPhone(phone,"baijin");
		        	
		        	if(codeForPhone!=null){
		    			userCode = codeForPhone+"";
		    		}else{
		    			String CodeNumber = dao.checkGameId("baijin");
		    			if(CodeNumber!=null){
		    				Date date = new Date();
		    				long time = date.getTime();
		    				if(dao.updatePhoneForId(CodeNumber, phone,time,"baijin")>0){
		    					userCode = CodeNumber+" ";
		    				}else{
		    					userCode = "服务器繁忙，请稍后重试！";
		    				}
		    				
		    			}else{
		    				userCode = "兑换码已发放完！";
		    			} 
		    		}
		        	pw.write("{\"code\":\""+userCode+"\"}");
		        
//	    			礼包3
            	}
	    	}
            if(giftNum.equalsIgnoreCase("4")){
            	if(orderdao.count(phone)<10){
	    			pw.write("{\"status\":\"cant\"}");
	    		}else{
//	    			礼包4

		        	String codeForPhone = dao.checkPhone(phone,"gaojiazhi");
		        	
		        	if(codeForPhone!=null){
		    			userCode = codeForPhone+"";
		    		}else{
		    			String CodeNumber = dao.checkGameId("gaojiazhi");
		    			if(CodeNumber!=null){
		    				Date date = new Date();
		    				long time = date.getTime();
		    				if(dao.updatePhoneForId(CodeNumber, phone,time,"gaojiazhi")>0){
		    					userCode = CodeNumber+" ";
		    				}else{
		    					userCode = "服务器繁忙，请稍后重试！";
		    				}
		    				
		    			}else{
		    				userCode = "兑换码已发放完！";
		    			} 
		    		}
		        	pw.write("{\"code\":\""+userCode+"\"}");
		        
//	    			礼包4
	    			
	    		}
	
            }
	    	
	    }
	    pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
