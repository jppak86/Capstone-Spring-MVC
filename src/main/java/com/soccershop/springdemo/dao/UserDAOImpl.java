package com.soccershop.springdemo.dao;

import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.soccershop.springdemo.entity.User;




@Repository
public class UserDAOImpl implements UserDAO {
	
	
	
	 
	// need to inject the session factory
		@Autowired
		private SessionFactory sessionFactory;
				
		@Override
		@Transactional
		public List<User> getUsers() {
			
			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
					
			// create a query
			Query<User> theQuery = 
					currentSession.createQuery("from User", User.class);
			
			// execute query and get result list
			List<User> users = theQuery.getResultList();
					
			// return the results		
			return users;
		}
		
		@Override
		public void saveUser(User theUser) {
			
			Session currentSession = sessionFactory.getCurrentSession();
			
			currentSession.saveOrUpdate(theUser);
			
		}
		
		@Override
		public User getUser(long theId) {
			
			Session currentSession = sessionFactory.getCurrentSession();
			
			User theUser = currentSession.get(User.class, theId);
			
			return theUser;
		}
		
		@Override
		@Transactional
		public User getUserByEmail(String email) {
			
			Session currentSession = sessionFactory.getCurrentSession();
			
			Query theQuery = 
					currentSession.createQuery("Select u from User u where u.email=:email", User.class);
			
			User theUser = (User) theQuery.setParameter("email", email).getSingleResult();
			
			
			
			return theUser;
		}
		
		@Override
		public void userDelete(long theId) {
			
			Session currentSession = sessionFactory.getCurrentSession();
			
			Query theQuery = 
					currentSession.createQuery("delete from User where id=:userId");
			theQuery.setParameter("userId", theId);
			
			theQuery.executeUpdate();		
		}
		
		@Override
		public boolean checkLogin(String email, String password) {
			
			Session currentSession = sessionFactory.getCurrentSession();
			boolean userFound = false;
			
			
			
			Query theQuery = 
					currentSession.createQuery("Select u from User u where u.email=:email", User.class);
			
			User theUser = (User) theQuery.setParameter("email", email).getSingleResult();
			
			String findOne = theUser.getEmail();
			
			System.out.println("user is:" + findOne);
			System.out.println("email is:" + email);
			System.out.println("userFound is true or false?: " + userFound);
			System.out.println("output: " + (findOne == email));
		
			
			if (findOne.equals(email)) {
				userFound= true;
			}
			System.out.println("userFound is true or false?: " + userFound);
			return userFound;
			
			
		}

}
