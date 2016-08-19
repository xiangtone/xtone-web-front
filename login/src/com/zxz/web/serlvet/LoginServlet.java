package com.zxz.web.serlvet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zxz.bean.User;
import com.zxz.service.UserService;
import com.zxz.service.impl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//获取页面的数据
		String name = request.getParameter("username") ;
		String pass = request.getParameter("password") ;
		
		//验证数据(略)
		
		//调用service层完成业务逻辑
		UserService us = new UserServiceImpl() ;
		User user = us.login(name, pass) ;
		if(user != null){
			//合法用户
			request.getSession().setAttribute("loginuser", user) ;
			request.getRequestDispatcher("/select.jsp").forward(request, response) ;
		}else{
			//非法用户
			request.getSession().setAttribute("error", "用户名或者密码错误") ;
			response.sendRedirect(request.getContextPath() + "/login.jsp") ;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
