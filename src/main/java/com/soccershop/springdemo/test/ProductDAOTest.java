package com.soccershop.springdemo.test;

import java.io.IOException;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.beans.factory.annotation.Autowired;

import com.soccershop.springdemo.dao.ProductDAO;
import com.soccershop.springdemo.entity.TopProduct;
import com.soccershop.springdemo.service.ProductService;

public class ProductDAOTest {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	private ProductService productService;
	
	@Test
	public void findProductById() throws IOException {
		TopProduct product = productService.getTopById(8);
		Assertions.assertNotNull(product);
		Assertions.assertEquals(50, product.getPrice());
	}

}
