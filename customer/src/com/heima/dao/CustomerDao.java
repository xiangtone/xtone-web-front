package com.heima.dao;

import java.util.List;

import com.heima.bean.Customer;

public interface CustomerDao {

	/**
	 * ���һ���ͻ�
	 * @param customer Ҫ�콣�Ŀͻ�
	 * @return ��ɳɹ�����TRUE�����򷵻�FALSE
	 */
	public boolean add(Customer customer) ;
	
	/**
	 * �޸�һ���ͻ�
	 * @param customer Ҫ�޸ĵĿͻ�
	 * @return �ɹ�����TRUE�����򷵻�FALSE
	 */
	public boolean update(Customer customer) ;
	
	/**
	 * ���ݿͻ�������ɾ���ͻ�
	 * @param id Ҫɾ���ͻ��ı��
	 * @return ɾ���ɹ�����TRUE�����򷵻�FALSE
	 */
	public boolean delete(String id) ;
	/**
	 * ��ȡ���еĿͻ�
	 * @return �������пͻ��ļ���
	 */
	public List<Customer> getAllCustomer() ;
	
	/**
	 * ���ݿͻ��ı�Ų�ѯ�ͻ�
	 * @param id �ͻ��ı��
	 * @return ��������ش˿ͻ������򷵻�null
	 */
	public Customer findCustomerById(String id) ;
}
