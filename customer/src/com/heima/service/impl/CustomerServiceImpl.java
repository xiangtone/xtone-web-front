package com.heima.service.impl;

import java.util.List;

import com.heima.bean.Customer;
import com.heima.dao.CustomerDao;
import com.heima.dao.impl.CustomerDaoImpl;
import com.heima.service.CustomerService;

public class CustomerServiceImpl implements CustomerService {
	
	CustomerDao dao = new CustomerDaoImpl() ;

	public boolean add(Customer customer) {
		return dao.add(customer);
	}

	public boolean update(Customer customer) {
		return dao.update(customer);
	}

	public boolean delete(String id) {
		return dao.delete(id);
	}

	public List<Customer> getAllCustomer() {
		return dao.getAllCustomer();
	}

	public Customer findCustomerById(String id) {
		return dao.findCustomerById(id);
	}

}
