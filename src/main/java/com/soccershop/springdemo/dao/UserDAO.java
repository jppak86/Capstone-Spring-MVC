package com.soccershop.springdemo.dao;

import java.util.List;

import com.soccershop.springdemo.entity.User;

public interface UserDAO {
	
	public List<User> getUsers();
	
	public void saveUser(User theUser);
	
	public User getUser(long theId);
	
	public void userDelete(long theId);
	
	public User getUserByEmail(String theEmail);
	
	public boolean checkLogin(String email, String password);
	
	

}
