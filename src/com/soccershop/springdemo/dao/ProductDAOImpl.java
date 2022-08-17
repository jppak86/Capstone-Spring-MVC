package com.soccershop.springdemo.dao;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.soccershop.springdemo.entity.Bottom;
import com.soccershop.springdemo.entity.Cart;
import com.soccershop.springdemo.entity.TopProduct;

@Repository
public class ProductDAOImpl implements ProductDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	@Transactional
	public List<TopProduct> getTopProducts() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<TopProduct> theQuery = 
				currentSession.createQuery("from TopProduct", TopProduct.class);
		
		// execute query and get result list
		List<TopProduct> topProducts = theQuery.getResultList();
				
		// return the results		
		return topProducts;
	}
	
	@Override
	@Transactional
	public List<Cart> getCartItems(long userId) {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<Cart> theQuery = 
				currentSession.createQuery("from Cart as c where c.user.id= :userId", Cart.class);
		theQuery.setParameter("userId", userId);
		
		
		// execute query and get result list
		List<Cart> cartItems = theQuery.getResultList();
		
		System.out.println("my cart items: " + cartItems);
				
		// return the results		
		return cartItems;
	}
	
	@Override
	@Transactional
	public List<Bottom> getBottomProducts() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<Bottom> theQuery = 
				currentSession.createQuery("from Bottom", Bottom.class);
		
		// execute query and get result list
		List<Bottom> topProducts = theQuery.getResultList();
				
		// return the results		
		return topProducts;
	}
	
	@Override
	@Transactional
	public TopProduct getTopById(int topId) throws IOException {
		for(TopProduct theTop : getTopProducts()) {
			if(theTop.getId() == topId) {
				return theTop;
			}
		}
		throw new IOException("No product found.");
	}
	
	@Override
	@Transactional
	public Cart getCartByProdutId(int productId, long userId) throws IOException {
		for(Cart theCart : getCartItems(userId)) {
			if(theCart.getTop().getId() == productId) {
				return theCart;
			}
		}
		throw new IOException("No Cart found.");
	}
	
	
	@Override
	@Transactional
	public void saveTop(TopProduct theTop) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		currentSession.saveOrUpdate(theTop);
		
		
	}
	
	@Override
	@Transactional
	public void saveItem(Cart item) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
				
		currentSession.saveOrUpdate(item);
		
	}
	
	@Override
	@Transactional
	public void productDelete(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = 
				currentSession.createQuery("delete from TopProduct where id=:productId");
		theQuery.setParameter("productId", theId);
		
		theQuery.executeUpdate();
	}
	
	@Override
	@Transactional
	public void itemDelete(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = 
				currentSession.createQuery("delete from Cart where id =:cartId");
		theQuery.setParameter("cartId", theId);
		
		theQuery.executeUpdate();
	}

}






