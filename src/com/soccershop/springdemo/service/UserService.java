package com.soccershop.springdemo.service;

import java.util.List;

import com.soccershop.springdemo.entity.User;

public interface UserService {
	
	public List<User> getUsers();
	
	public void saveUser(User theUser);
	
	public User getUser(long theId);
	
	public User getUserByEmail(String theEmail);
	
	public void userDelete (long theId);
	
	public boolean checkLogin(String email, String password);

}
