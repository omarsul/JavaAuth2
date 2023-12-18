package com.example.demo.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.models.User;
import com.example.demo.models.request.LoginRequest;
import com.example.demo.services.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userServ;
	
	@GetMapping("/")
	public String index(Model model) {
	    model.addAttribute("newUser", new User());
	    model.addAttribute("newLogin", new LoginRequest());
	    return "index.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, 
	        BindingResult result, Model model, HttpSession session) {
		
	    userServ.register(newUser, result);
	    
	    if(result.hasErrors()) {
	        model.addAttribute("newLogin", new LoginRequest());
	        return "index.jsp";
	    }
	    session.setAttribute("userId", newUser.getId());
	    session.setAttribute("username", newUser.getUserName());
	    return "redirect:/home";
	}
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginRequest newLogin, 
	        BindingResult result, Model model, HttpSession session) {
	    
		User user = userServ.login(newLogin, result);
		
	    if(result.hasErrors()) {
	        model.addAttribute("newUser", new User());
	        return "index.jsp";
	    }
	    session.setAttribute("userId", user.getId());
	    session.setAttribute("username", user.getUserName());
	    return "redirect:/home";
	}
	
	@GetMapping("/home")
    public String home(Model model, HttpSession session) {
    	
    	if(session.getAttribute("userId") == null) {
    		return "redirect:/";
    	}
    	model.addAttribute("user", userServ.findById((Long)session.getAttribute("userId")));
    	return "home.jsp";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
    
}

