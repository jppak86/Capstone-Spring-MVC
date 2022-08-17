package com.soccershop.springdemo.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.io.IOException;
import java.util.List;

import org.junit.Before;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.soccershop.springdemo.entity.Cart;
import com.soccershop.springdemo.entity.TopProduct;
import com.soccershop.springdemo.entity.User;
import com.soccershop.springdemo.service.ProductService;
import com.soccershop.springdemo.service.UserService;

@ContextConfiguration(locations = {"classpath:jayden-mvc-crud-demo-servlet.xml"})
@WebAppConfiguration
class ProductDAOImplTest {
	
	@Autowired
	private WebApplicationContext webApplicationContext;
	
	
	protected MockMvc mockMvc;
	
	@Before
	public void setup() throws Exception {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.webApplicationContext).build();
	}
	
	
	@Autowired
	private ProductDAOImpl pds;
	
	@Autowired
	private UserDAOImpl ss;

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testGetTopProducts() {
		
		List<TopProduct> products =pds.getTopProducts();
		System.out.println("products: " + products);
		assertNotNull(products);
		
	}

	@Test
	void testGetCartItems() {
		long userId= 8;
		List<Cart> items = pds.getCartItems(userId);
		assertNotNull(items);
	
	}

	@Test
	void testGetTopById() throws IOException {
		int productId = 9;
		TopProduct theProduct = pds.getTopById(productId);
		assertEquals("Correct!!", 9, theProduct.getId());
		assertNotNull("Not null data is here: ", theProduct);
	}

	@Test
	void testGetCartByProdutId() throws IOException {
		int productId = 9;
		long userId = 8;
		
		Cart order = pds.getCartByProdutId(productId, userId);
		assertNotNull("Found the cart: ", order);
	}

	@Test
	void testSaveTop() {
		TopProduct savedTop = new TopProduct("top", "Uniqlo mens jacket", 20.00, "https://image.uniqlo.com/UQ/ST3/us/imagesgoods/449855/item/usgoods_11_449855.jpg?width=750","Machine washable for easy care.");
		pds.saveTop(savedTop);
		List<TopProduct> listTop = pds.getTopProducts();
		assertTrue(listTop.contains(savedTop));
		
		
	}

	@Test
	void testSaveItem() throws IOException {
		int productId = 9;
		long userId= 8;
		TopProduct savedTop = pds.getTopById(productId);
		User theUser = ss.getUser(userId);
		Cart newItem = new Cart(20, savedTop, theUser, 1);
		pds.saveItem(newItem);
		List<Cart> savedCart = pds.getCartItems(userId);
		assertTrue(savedCart.contains(newItem));
		
	}

	@Test
	void testProductDelete() throws IOException {
		int productId = 10;
		
		TopProduct savedTop = pds.getTopById(productId);
		pds.productDelete(productId);
		List<TopProduct> listTop = pds.getTopProducts();
		assertFalse(listTop.contains(savedTop));
		
	
		
		
	}

	@Test
	void testItemDelete() throws IOException {
		int productId = 9;
		long userId= 8;
		int cartId = 20;
		
		Cart order = pds.getCartByProdutId(productId, userId);
		pds.itemDelete(cartId);
		
		List<Cart> savedCart = pds.getCartItems(userId);
		assertFalse(savedCart.contains(order));
		
		
	}

}
