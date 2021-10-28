package com.sexking.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sexking.www.dao.UserDAO;
import com.sexking.www.logic.Members;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;
	
	
	public Members getUserOne(String com, String col) {

		return userDAO.getUserOne(com, col);
		
	}

}
