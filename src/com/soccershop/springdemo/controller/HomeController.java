package com.soccershop.springdemo.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.soccershop.springdemo.entity.TopProduct;
import com.soccershop.springdemo.entity.User;
import com.soccershop.springdemo.service.ProductService;
import com.soccershop.springdemo.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	
	
	
	@RequestMapping("/home2/{userId}")
	public String home(@PathVariable("userId") long theId, Model model) {
		List<TopProduct> topProductList = productService.getTopProducts();
		model.addAttribute("topProducts", topProductList);
		
		User theUser = userService.getUser(theId);
		
		model.addAttribute("theUser", theUser);
		
		
		return "home2" ;
	}
	
	@RequestMapping("/productDetail/{productId}/{userId}")
	public String productDetail(@PathVariable int productId, @PathVariable("userId") long theId, Model model) throws IOException {
		TopProduct theTop = productService.getTopById(productId);
		model.addAttribute("topProduct", theTop);
		
		User theUser = userService.getUser(theId);
		model.addAttribute("theUser", theUser);
		
		return "productDetail";
		
	}
	
	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model) {
		List<TopProduct> topProductList = productService.getTopProducts();
		model.addAttribute("topProducts", topProductList);
		return "productInventory";
	}
	
	@GetMapping("/admin/addProduct")
	public String addProduct(Model model) {
		TopProduct theTop= new TopProduct();
		model.addAttribute("product", theTop);
		return "addProduct";
	}
	
	@PostMapping("/admin/saveTop")
	public String saveTop(@ModelAttribute("product") TopProduct theTop) {
		
		productService.saveTop(theTop);
		
		return "redirect:/admin/productInventory";
	}
	
	@GetMapping("/admin/delete")
	public String productDelete(@RequestParam("productId") int theId, Model theModel) {
		
		productService.productDelete(theId);
		
		
		
		return "redirect:/admin/productInventory";
	}
	
	@GetMapping("/admin/update")
	public String productUpdate(@RequestParam("productId") int theId, Model theModel) throws IOException {
		
		TopProduct theTop = productService.getTopById(theId);
		
		theModel.addAttribute("product", theTop);
		
		return "addProduct";
	}

}
