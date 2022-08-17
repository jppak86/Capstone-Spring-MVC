package com.soccershop.springdemo.controller;

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

import com.soccershop.springdemo.entity.User;
import com.soccershop.springdemo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/list")
	public String listUsers(Model theModel) {
		
		List<User> theUsers = userService.getUsers();
		
		theModel.addAttribute("users", theUsers);
		
		return "list-users";
	}
	
	@GetMapping("/createAccount")
	public String createAccount(Model theModel) {
	
	User theUser = new User();
	
	theModel.addAttribute("user", theUser);
	
	return "create-account";
}
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser) {
		
		// save the customer using our service
		userService.saveUser(theUser);
		
		
		return "redirect:/user/list";
	}
	
	@GetMapping("/contact/{userId}")
	public String contactPage(@PathVariable("userId") long theId, Model model) {
		
		User theUser = userService.getUser(theId);
		
		model.addAttribute("theUser", theUser);
		
		
		
		return "contact";
	}
	
	@GetMapping("/checkout")
	public String checkoutPage(Model theModel) {
		
		List<User> theUsers = userService.getUsers();
		
		theModel.addAttribute("users", theUsers);
		
		
		
		return "checkout";
	}
	
	@GetMapping("/update")
	public String userUpdate(@RequestParam("userId") long theId, Model theModel) {
		
		User theUser = userService.getUser(theId);
		
		theModel.addAttribute("user", theUser);
		
		
		return "create-account";
	}
	
	@GetMapping("/delete")
	public String userDelete(@RequestParam("userId") long theId, Model theModel) {
		
		userService.userDelete(theId);
		
		
		
		return "redirect:/user/list";
	}

}
