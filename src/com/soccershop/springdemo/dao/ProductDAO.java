package com.soccershop.springdemo.dao;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

import com.soccershop.springdemo.entity.Bottom;
import com.soccershop.springdemo.entity.Cart;
import com.soccershop.springdemo.entity.TopProduct;

public interface ProductDAO {

	public List<TopProduct> getTopProducts();
	
	public List<Bottom> getBottomProducts();
	
	public TopProduct getTopById(int topId) throws IOException;
	
	public Cart getCartByProdutId(int productId, long userId) throws IOException;
	
	public List<Cart> getCartItems(long userId);
	
	public void saveTop(TopProduct theTop);
	
	public void productDelete(int theId);
	
	public void saveItem(Cart item);
	
	public void itemDelete(int theId);
}
