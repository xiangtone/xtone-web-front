package com.heima.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.locale.converters.DateLocaleConverter;

import com.heima.bean.Customer;
import com.heima.service.CustomerService;
import com.heima.service.impl.CustomerServiceImpl;
import com.heima.utils.WebTools;
import com.heima.utils.WebUtils;
import com.heima.web.formbean.CustomerFormBean;


@WebServlet("/Controller")
public class Controller extends HttpServlet {
	
	CustomerService cs = new CustomerServiceImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		// �õ�ҳ�洫�ݵ�����
		String op = request.getParameter("op");

		if ("all".equals(op)) {
			listAll(request, response);
		} else if ("add".equals(op)) {
			addCustomer(request, response);
		} else if ("toupdate".equals(op)) {
			toUpdate(request, response);
		} else if ("update".equals(op)) {
			update(request, response);
		} else if("delete".equals(op)){
			delete(request,response) ;
		} else if("delmore".equals(op)){
			delMore(request,response) ;
		}
	}

	//ɾ����������
	private void delMore(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException  {
		//�õ�ҳ�������
		String ids = request.getParameter("ids") ;
		//����ids�������һ�����ţ��ǵ�ȥ��
		ids = ids.substring(0, ids.length()-1) ;
		//����ַ���
		String [] strIds = ids.split(",") ;
		System.out.println(strIds[0]);
		//ѭ��ɾ��
		for (int i = 0; i < strIds.length; i++) {
			//����service�����ɾ������
			cs.delete(strIds[i]) ;
		}
		
		//ת����ҳ��
		listAll(request, response) ;
	}

	//ɾ�������Ŀͻ���Ϣ
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�õ�ҳ�洫�ݵ�����
		String id = request.getParameter("id") ;
		//����service�����ҵ���߼�
		boolean flag = cs.delete(id) ;

		if (!flag) {
			// ɾ��ʧ��
			request.getSession().setAttribute("error", "ɾ��ʧ��");
		} 
		// �����²�ѯ���ݿ⣬��ȡ���ݺ���ת��		
		listAll(request, response);
 	}

	// �޸Ŀͻ���Ϣ
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ��װҳ�������
		CustomerFormBean cfb = WebUtils.fillFormBean(CustomerFormBean.class,
				request);

		// �������(ʡ��)
		// �������ݵ�һ��JavaBean��
		Customer c = new Customer();
		// ����ʱ����date����,��������ע��һ��ʱ��ת����
		ConvertUtils.register(new DateLocaleConverter(), Date.class);
		// ��������
		try {
			BeanUtils.copyProperties(c, cfb);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// ��������
		// ������ڰ������Ͳ�ͬ,����bean�����ۿ������ݣ���Ҫ�ֶ�����
		// �õ�ҳ��İ�������
		String[] hobby = cfb.getHobby();
		if (hobby != null && hobby.length > 0) {
			StringBuffer sb = new StringBuffer(hobby[0]);
			for (int i = 1; i < hobby.length; i++) {
				sb.append("," + hobby[i]);
			}
			c.setHobby(sb.toString());
		}

		// ����service�����ҵ���߼�
		boolean flag = cs.update(c);

		if (flag) {
			// ˵���޸ĳɹ��ˣ�ת����ҳ��
			// �����²�ѯ���ݿ⣬��ȡ���ݺ���ת��
			listAll(request, response);
		} else {
			// �޸�ʧ��
			request.setAttribute("error", "�޸�ʧ��");
			request.getRequestDispatcher("/update.jsp").forward(request, response);
		}
	}

	// ת���޸�ҳ��(������û����ݺ�)
	private void toUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// �õ�ҳ�洫�ݵ�id
		String id = request.getParameter("id");
		// ����service�����ҵ���߼�(�����û�)
		Customer c = cs.findCustomerById(id);

		// ���������request�����ת�����޸�ҳ��
		request.setAttribute("customer", c);

		request.getRequestDispatcher("/update.jsp").forward(request, response);
	}

	// ��ӿͻ���Ϣ
	private void addCustomer(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ��װҳ�������
		CustomerFormBean cfb = WebUtils.fillFormBean(CustomerFormBean.class,
				request);

		// �������(ʡ��)
		// �������ݵ�һ��JavaBean��
		Customer c = new Customer();
		// ����ʱ����date����,��������ע��һ��ʱ��ת����
		ConvertUtils.register(new DateLocaleConverter(), Date.class);
		// ��������
		try {
			BeanUtils.copyProperties(c, cfb);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// ��������
		// ����c��û������(id)����Ҫ����һ��id
		c.setId(WebTools.createNewId());
		// ������ڰ������Ͳ�ͬ,����bean�����ۿ������ݣ���Ҫ�ֶ�����
		// �õ�ҳ��İ�������
		String[] hobby = cfb.getHobby();
		if (hobby != null && hobby.length > 0) {
			StringBuffer sb = new StringBuffer(hobby[0]);
			for (int i = 1; i < hobby.length; i++) {
				sb.append("," + hobby[i]);
			}
			c.setHobby(sb.toString());
		}

		// ����service�����ҵ���߼�
		boolean flag = cs.add(c);

		if (flag) {
			// ˵����ӳɹ��ˣ�ת����ҳ��
			// �����²�ѯ���ݿ⣬��ȡ���ݺ���ת��
			listAll(request, response);
		} else {
			// ���ʧ��
			request.setAttribute("error", "���ʧ��");
			request.getRequestDispatcher("/add.jsp").forward(request, response);
		}

	}

	// ��ʾ���е�����
	private void listAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// �õ����е�����
		List<Customer> list = cs.getAllCustomer();

		// �����ݴ�ŵ�session��
		request.getSession().setAttribute("list", list);

		// ҳ���ض�����ҳ��
		response.sendRedirect(request.getContextPath() + "/list.jsp");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
