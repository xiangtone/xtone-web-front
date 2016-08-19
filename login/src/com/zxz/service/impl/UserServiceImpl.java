package com.zxz.service.impl;

import com.zxz.bean.User;
import com.zxz.dao.UserDao;
import com.zxz.dao.impl.UserDaoMySqlImpl1;
import com.zxz.exception.UserExistsException;
import com.zxz.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao dao = new UserDaoMySqlImpl1() ;
	
	public User login(String username, String password) {
		return dao.findUserByUserNameAndPassword(username, password);
	}

	public void register(User user) throws UserExistsException {
		//查找用户
		User u = dao.findUserByUserName(user.getUsername()) ;
		if(u == null)
			//说明用户没有注册过
			dao.add(user) ;
		else
			throw new UserExistsException() ;
	}
}
