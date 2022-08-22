package com.soccershop.springdemo.controller;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soccershop.springdemo.entity.TopProduct;
import com.soccershop.springdemo.entity.User;
import com.soccershop.springdemo.form.LoginForm;
import com.soccershop.springdemo.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	public UserService userService;
	
	@GetMapping
	public String showForm(Model model) {
		LoginForm loginForm = new LoginForm();
		model.addAttribute("loginForm", loginForm);
		 
		
		return "login";
	}
	
	
	@PostMapping("/home")
	public String processForm(@Valid @ModelAttribute("loginForm") LoginForm loginForm, BindingResult result,
		Model model	) {

		
		if (result.hasErrors()) {
			return "login";
		}
		
		boolean userExists = userService.checkLogin(loginForm.getEmail(),loginForm.getPassword());
		System.out.println("is user exist?? " + userExists);
		
		if(userExists){
			model.addAttribute("loginForm", loginForm);
			System.out.println("here is email" + loginForm.getEmail());
			User theUser = userService.getUserByEmail(loginForm.getEmail());
			model.addAttribute("theUser", theUser);
			System.out.println("user is email" + theUser.getFirstName());
			
			
			return "home";
		}else{
			result.rejectValue("email","invaliduser");
			
			System.out.println("no valid email match " + loginForm.getEmail());
			return "redirect:/login";
		}

	}
	


}
