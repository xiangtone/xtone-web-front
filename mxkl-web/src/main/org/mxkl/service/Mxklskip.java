package org.mxkl.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.common.util.ThreadPool;

/**
 * Servlet implementation class Mxklskip
 */
@WebServlet("/Mxklskip")
public class Mxklskip extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mxklskip() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String f= request.getParameter("f");
		String apk = request.getParameter("apk");
		
		String query = request.getQueryString();
//		System.out.println(f);
//		System.out.println(querry);
		String targetUrl = null ;
		if(f.equalsIgnoreCase("uc")){
			targetUrl = "http://cdnsrc.xtonegame.com/download/mxkl/mxkl160627_01(uc).apk" ;
		}
        if(f.equalsIgnoreCase("jrtt")){
        	targetUrl = "http://cdnsrc.xtonegame.com/download/mxkl/mxkl160627_02(jrtt).apk" ;
		}
        if(f.equalsIgnoreCase("zht")){
        	targetUrl = "http://cdnsrc.xtonegame.com/download/mxkl/mxkl160627_03(zht).apk" ;
        }
        if(apk!=null){
        	if(apk.equalsIgnoreCase("1")){
        		targetUrl = "http://cdnsrc.xtonegame.com/download/mxkl/mxkl160713(01).apk" ;
        	}
        	if(apk.equalsIgnoreCase("2")){
        		targetUrl = "http://cdnsrc.xtonegame.com/download/mxkl/mxkl160713(02).apk" ;
        	}
        	
        }
		ThreadPool.mThreadPool.execute(new Mxklloginsert(2002,"mengxiangkunlun",query,request.getRequestedSessionId(),request.getHeader("referer"),request.getHeader("user-agent"),request.getHeader("X-Real-IP")!=null?request.getHeader("X-Real-IP"):request.getRemoteAddr()));
		response.sendRedirect(targetUrl);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
