package com.soccershop.springdemo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soccershop.springdemo.entity.Cart;
import com.soccershop.springdemo.entity.User;
import com.soccershop.springdemo.service.ProductService;
import com.soccershop.springdemo.service.UserService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;

	
	@GetMapping("/{userId}")
	public String itemsList(@PathVariable long userId, Model model) {
		List<Cart> myOrders = productService.getCartItems(userId);
		model.addAttribute("order", myOrders);

		User theUser = userService.getUser(userId);
		
		model.addAttribute("theUser", theUser);
		
		return "cart";
	}
	
	
	@GetMapping("/buy/{productId}/{userId}")
	public String cartItems(@PathVariable int productId, @PathVariable long userId, HttpSession session, Model model) throws IOException {
		List<Cart> myOrders = productService.getCartItems(userId);
		model.addAttribute("order", myOrders);
		
		if(model.getAttribute("order") == null) {
			
			List<Cart> newCart = new ArrayList<Cart>();
			Cart newOrder = new Cart(productService.getTopById(productId), userService.getUser(userId), 1);
			newCart.add(newOrder);
			productService.saveItem(newOrder);
			model.addAttribute("order", myOrders);
			
		} else {
			List<Cart> newCart = (List<Cart>) model.getAttribute("order");
			
			int index = this.exists(productId, newCart);
			
			if(index == -1) {
				try {
					Cart newOrder = new Cart(productService.getTopById(productId), userService.getUser(userId), 1);
					newCart.add(newOrder);
					productService.saveItem(newOrder);
					model.addAttribute("order", newCart);
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else {
				int quantity = newCart.get(index).getQuantity() +1;
				newCart.get(index).setQuantity(quantity);
				Cart newOrder = new Cart(newCart.get(index).getId(), productService.getTopById(productId), userService.getUser(userId), quantity);
				newCart.add(newOrder);
				productService.saveItem(newOrder);
				model.addAttribute("order", newCart);
			}

		}
		return "redirect:/cart/{userId}"; 	
		}
	
	@GetMapping("/remove/{productId}/{userId}")
	public String productDelete(@PathVariable("productId") int productId, @PathVariable("userId") long userId, Model model) {
		
		List<Cart> newCart = productService.getCartItems(userId);
		
		
		int index = this.exists(productId, newCart);
		int cartId = newCart.get(index).getId();
		
		productService.itemDelete(cartId);
//		newCart.remove(index);
//		
//		System.out.println(" after remove jayden orders : " + newCart);
//		model.addAttribute("order", newCart);
		
		
		return "redirect:/cart/{userId}";
		
	}
	
	private int exists(int id, List<Cart> orders) {
		
		for(int i = 0; i < orders.size(); i++) {
			System.out.println("order id is :" + orders.get(i).getTop().getId());
			if(orders.get(i).getTop().getId() == id) {
				return i;
			}
		}
		return -1;
	}
	
	@PostMapping("/saveItem")
	public String saveItem(@ModelAttribute("order") Cart item ) {
		
		productService.saveItem(item);
		
		return "redirect:/cart/list";
	}
	
	
	
	@RequestMapping("/checkout/{userId}")
	public String checkOut(@PathVariable long userId, Model model)  {
		List<Cart> carts = productService.getCartItems(userId);
		model.addAttribute("cart", carts);
		User theUser = userService.getUser(userId);
		
		model.addAttribute("theUser", theUser);
		return "checkout";
		
	}
	
	@RequestMapping("/thanks/{userId}")
	public String thanksPage(@PathVariable long userId, Model model) {
		
		User theUser = userService.getUser(userId);
		
		model.addAttribute("theUser", theUser);
		
		return "thankyou";
	}
	
	
	
	
	
		
	}


