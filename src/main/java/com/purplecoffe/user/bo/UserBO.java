package com.purplecoffe.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purplecoffe.user.dao.UserDAO;
import com.purplecoffe.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public int existEmail(String email) {
		return userDAO.existEmail(email);
	}

	public User getUserByEmailAndPassword(String email, String password) {
		return userDAO.selectUserByEmailAndPassword(email, password);
	}

	public int insertUser(String email, String password, String name) {
		return userDAO.insertUser(email, password, name);
	}

}
