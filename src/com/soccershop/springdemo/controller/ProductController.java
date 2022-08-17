package com.soccershop.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soccershop.springdemo.entity.Bottom;
import com.soccershop.springdemo.entity.TopProduct;
import com.soccershop.springdemo.entity.User;
import com.soccershop.springdemo.service.ProductService;
import com.soccershop.springdemo.service.UserService;

@Controller
@RequestMapping("/product")
public class ProductController 
{
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/list")
	public String listProducts2(Model theModel)
	{
		
		List<TopProduct> theProducts = productService.getTopProducts();
		
		theModel.addAttribute("products", theProducts);
		
		return "list-products";
	}
	
//	@RequestMapping("/home")
//	public String listProducts(Model theModel)
//	{
//		
////		List<Product> theProducts = productService.getProducts();
////		
////		theModel.addAttribute("products", theProducts);
//		
//		return "home";
//	}
	
	@RequestMapping("/top/{userId}")
	public String topPage(@PathVariable long userId,Model theModel)
	{
		
		List<TopProduct> theProducts = productService.getTopProducts();
		
		theModel.addAttribute("topProducts", theProducts);
		
		User theUser = userService.getUser(userId);
		theModel.addAttribute("theUser", theUser);
		
		return "shopTop";
	}
	
	@RequestMapping("/bottom")
	public String bottomPage(Model theModel)
	{
		
		List<Bottom> theProducts = productService.getBottomProducts();
		
		theModel.addAttribute("bottomProducts", theProducts);
		
		return "shopBottom";
	}
	
//	@RequestMapping("/cart")
//	public String cartPage(Model theModel)
//	{
//		
//		List<TopProduct> theProducts = productService.getTopProducts();
//		
//		theModel.addAttribute("topProducts", theProducts);
//		
//		return "cart";
//	}
	

	
	
}
