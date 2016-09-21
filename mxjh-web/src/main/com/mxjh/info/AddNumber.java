package com.mxjh.info;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.common.util.ConnectionService;

import com.mxjh2.info.Sentchit2;

/**
 * Servlet implementation class AddNumber
 */
@WebServlet("/AddNumber")
public class AddNumber extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNumber() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	    response.setContentType("application/json;charset=UTF-8");  
		int data;
		String phone=request.getParameter("phone");
		//System.out.print(phone);
        Connection con = null;
      	PreparedStatement ps = null;
      	ResultSet rs = null;
      	String exchange = "";
      	int rowCount=0;
      	String idString="";
      	try{
      		con = ConnectionService.getInstance().getConnectionForLocal();   		
      		String sql = "SELECT COUNT(1) rowCount FROM tbl_exchange_codes WHERE phone = \""+phone+"\"";
      		//System.out.println(sql);
      		ps = con.prepareStatement(sql);
      		rs = ps.executeQuery();
      		while(rs.next()){
      		rowCount = rs.getInt("rowCount");
      		}
      		if(rowCount==1){                                         			 
                  data=1;
      			
      		}else{  
      			  
      			sql="select id from  tbl_exchange_codes where phone is null limit 1";
      			ps = con.prepareStatement(sql);
          		rs = ps.executeQuery();
          		while(rs.next()){
          		 idString=rs.getString("id");
          		}
          		sql="update tbl_exchange_codes set phone=\""+phone+"\", addtime= UNIX_TIMESTAMP()*1000 where id= \""+idString+"\"";
      			
          		
          		//System.out.println(sql);
          		ps = con.prepareStatement(sql);
          		ps.executeUpdate();
          		
          		sql="insert into tbl_orders_users(id,invitephoneNum,addTime) values(\""+phone+"\",0,UNIX_TIMESTAMP()*1000)";
          		//System.out.println(sql);
          		ps = con.prepareStatement(sql);
          		ps.executeUpdate();
          		Sentchit2.sendTemplateSms(String.valueOf(phone), "ZD30010-0004", "@1@="+idString);
          		//System.out.println(String.valueOf(phone));
      			data=2;
      	 		}
      		//System.out.println(data);
      		response.getWriter().write(String.valueOf(data));  
      		      		
      		
      	   }catch(Exception e){
      		e.printStackTrace();
      	   }finally{
      		if (con != null) {
      			try {
      				con.close();
      			} catch (Exception e) {
      				// TODO Auto-generated catch block
      				e.printStackTrace();
      			}
      		}
      	
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
