package com.soccershop.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soccershop.springdemo.dao.UserDAO;
import com.soccershop.springdemo.entity.User;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public List<User> getUsers(){
		return userDAO.getUsers();
	}
	
	@Override
	@Transactional
	public void saveUser(User theUser)
	{
		userDAO.saveUser(theUser);
	}
	
	@Override
	@Transactional
	public User getUser(long theId)
	{
		return userDAO.getUser(theId);
	}
	
	@Override
	@Transactional
	public void userDelete(long theId)
	{
		userDAO.userDelete(theId);
	}
	
	@Override
	@Transactional
	public boolean checkLogin(String email, String password) {
		return userDAO.checkLogin(email, password);
	}
	
	public User getUserByEmail(String theEmail) {
		return userDAO.getUserByEmail(theEmail);
	}
	
}
