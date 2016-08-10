package com.heima.dao.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.heima.bean.Customer;
import com.heima.dao.CustomerDao;
import com.heima.utils.JdbcUtils;

public class CustomerDaoImpl implements CustomerDao {

	public boolean add(Customer customer) {
		// 拿到连接对象
		Connection conn = JdbcUtils.getConnection();
		PreparedStatement pstmt = null;
		// 创建预处理命令对象
		int n = 0;
		try {
			pstmt = conn
					.prepareStatement("insert into "
							+ "customer(id,name,gender,birthday,cellphone,email,hobby,type,description) values(?,?,?,?,?,?,?,?,?)");
			// 指定?的值
			pstmt.setString(1, customer.getId());
			pstmt.setString(2, customer.getName());
			pstmt.setString(3, customer.getGender());
			pstmt.setDate(4,
					new java.sql.Date(customer.getBirthday().getTime()));
			pstmt.setString(5, customer.getCellphone());
			pstmt.setString(6, customer.getEmail());
			pstmt.setString(7, customer.getHobby());
			pstmt.setString(8, customer.getType());
			pstmt.setString(9, customer.getDescription());

			// 执行sql语句
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.release(null, pstmt, conn);
		}
		return n > 0 ? true : false;
	}

	public boolean update(Customer customer) {
		// 拿到连接对象
		Connection conn = JdbcUtils.getConnection();
		PreparedStatement pstmt = null;
		// 创建预处理命令对象
		int n = 0;
		try {
			pstmt = conn
					.prepareStatement("update "
							+ "customer set name=?,gender=?,birthday=?,cellphone=?,email=?,hobby=?,type=?,description=? where id = ?");
			// 指定?的值

			pstmt.setString(1, customer.getName());
			pstmt.setString(2, customer.getGender());
			pstmt.setDate(3,
					new java.sql.Date(customer.getBirthday().getTime()));
			pstmt.setString(4, customer.getCellphone());
			pstmt.setString(5, customer.getEmail());
			pstmt.setString(6, customer.getHobby());
			pstmt.setString(7, customer.getType());
			pstmt.setString(8, customer.getDescription());
			pstmt.setString(9, customer.getId());

			// 执行sql语句
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.release(null, pstmt, conn);
		}
		return n > 0 ? true : false;
	}

	public boolean delete(String id) {
		// 拿到连接对象
		Connection conn = JdbcUtils.getConnection();
		PreparedStatement pstmt = null;
		// 创建预处理命令对象
		int n = 0;
		try {
			pstmt = conn.prepareStatement("delete from customer where id = ?");
			// 指定?的值
			pstmt.setString(1, id);
			// 执行sql语句
			n = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.release(null, pstmt, conn);
		}
		return n > 0 ? true : false;
	}

	public List<Customer> getAllCustomer() {
		// 拿到连接对象
		Connection conn = JdbcUtils.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null ;
		List<Customer> list = new ArrayList<Customer>() ;
		// 创建预处理命令对象
		try {
			pstmt = conn.prepareStatement("select id,name,gender,birthday,cellphone,email,hobby,type,description from customer");
			
			// 执行sql语句
			rs = pstmt.executeQuery() ;
			while(rs.next()){
				//封装数据
				Customer c = new Customer() ;
				try {
					String id = URLEncoder.encode(rs.getString("id"),"UTF-8") ;
					c.setId(id) ;
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				c.setName(rs.getString("name")) ;
				c.setGender(rs.getString("gender")) ;
				c.setBirthday(rs.getDate("birthday")) ;
				c.setCellphone(rs.getString("cellphone")) ;
				c.setEmail(rs.getString("email")) ;
				c.setHobby(rs.getString("hobby")) ;
				c.setType(rs.getString("type")) ;
				c.setDescription(rs.getString("description")) ;
				
				list.add(c) ;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.release(null, pstmt, conn);
		}
		return list ;
	}

	public Customer findCustomerById(String id) {
		// 拿到连接对象
		Connection conn = JdbcUtils.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null ;
		// 创建预处理命令对象
		try {
			pstmt = conn.prepareStatement("select id,name,gender,birthday,cellphone,email,hobby,type,description from customer where id = '" + id + "'");
			
			// 执行sql语句
			rs = pstmt.executeQuery() ;
			if(rs.next()){
				//封装数据
				Customer c = new Customer() ;
				
				c.setId(rs.getString("id")) ;
				c.setName(rs.getString("name")) ;
				c.setGender(rs.getString("gender")) ;
				c.setBirthday(rs.getDate("birthday")) ;
				c.setCellphone(rs.getString("cellphone")) ;
				c.setEmail(rs.getString("email")) ;
				c.setHobby(rs.getString("hobby")) ;
				c.setType(rs.getString("type")) ;
				c.setDescription(rs.getString("description")) ;
				
				return c ;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.release(null, pstmt, conn);
		}
		return null ;
	}

}
