package org.mxkl.wctalk;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mxkl.info.Message;
import org.mxkl.util.HttpsRequest;

import com.google.gson.Gson;

/**
 * Servlet implementation class Lyxmredirect
 */
@WebServlet("/Lyxmredirect")
public class Lyxmredirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lyxmredirect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String code = request.getParameter("code");
		    HttpsRequest req = new HttpsRequest();
		    String resours = null;
			try {
				resours = (String)req.sendGet("https://api.weixin.qq.com/sns/oauth2/access_token?appid=wx26d9b9ff5f0fc4ed&secret=8b1de189eefa9c0d78c1a847122eaf38&code="+code+"&grant_type=authorization_code");
			} catch (UnrecoverableKeyException | KeyManagementException | KeyStoreException
					| NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//		    	System.out.println(resours);
//		    	System.out.println(1010);
		    Gson gson = new Gson();
		    Message msg = gson.fromJson(resours, Message.class);
		    String openid = msg.getOpenid();
		    String url = "http://lyxm.xtonegame.com/mobile.jsp?openid="+openid;
		    response.sendRedirect(url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
