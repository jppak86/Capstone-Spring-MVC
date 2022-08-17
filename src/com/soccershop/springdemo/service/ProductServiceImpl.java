package com.soccershop.springdemo.service;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soccershop.springdemo.dao.ProductDAO;
import com.soccershop.springdemo.entity.Bottom;
import com.soccershop.springdemo.entity.Cart;
import com.soccershop.springdemo.entity.TopProduct;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public List<TopProduct> getTopProducts()
	{
		return productDAO.getTopProducts();
	}
	
	@Override
	@Transactional
	public List<Bottom> getBottomProducts()
	{
		return productDAO.getBottomProducts();
	}
	
	
	@Override
	@Transactional
	public TopProduct getTopById(int topId) throws IOException {
		
		return productDAO.getTopById(topId);
	}
	
	@Override
	@Transactional
	public void saveTop(TopProduct theTop) {
		
		 productDAO.saveTop(theTop);
	}
	
	@Override
	@Transactional
	public void productDelete(int theId) {
		
		productDAO.productDelete(theId);
	}
	
	@Override
	@Transactional
	public void saveItem(Cart item) {
		productDAO.saveItem(item);
	}
	
	@Override
	@Transactional
	public List<Cart> getCartItems(long userId){
		return productDAO.getCartItems(userId);
	}
	
	
	@Override
	@Transactional
	public void itemDelete(int theId) {
		
		productDAO.itemDelete(theId);
	}
	
	@Override
	@Transactional
	public Cart getCartByProdutId(int productId, long userId) throws IOException{
		
		return productDAO.getCartByProdutId(productId, userId);
	}

}
