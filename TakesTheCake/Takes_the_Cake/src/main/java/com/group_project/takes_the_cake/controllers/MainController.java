package com.group_project.takes_the_cake.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.group_project.takes_the_cake.services.CakeService;
import com.group_project.takes_the_cake.services.UserService;
import com.group_project.takes_the_cake.models.LoginUser;
import com.group_project.takes_the_cake.models.User;

@Controller
public class MainController {

	@Autowired
	private UserService users;
	
	@Autowired
	private CakeService cakes;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "login.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
		User user = users.register(newUser, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return"login.jsp";
		}
		session.setAttribute("userId", user.getId());
		return "redirect:/home";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = users.Login(newLogin, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "login.jsp";
		}
		
		session.setAttribute("userId", user.getId());
		
		return "redirect:/home";
	}
	
	@GetMapping("/home")
	public String home(Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return"redirect:/";
		}
		
		model.addAttribute("user", users.findById((Long)session.getAttribute("userId")));
		
		model.addAttribute("cakes", cakes.all());
		return "home.jsp";
	}
	
	
}
