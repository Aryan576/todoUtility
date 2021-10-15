package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/userhome")
	public String users() {
		// TODO Auto-generated method stub
		return "userhome";
		
	}
	
	@GetMapping("/register")
	public String register() {
		// TODO Auto-generated method stub
		return "register";
		
	}
	
	@GetMapping("/")
	public String login() {
		// TODO Auto-generated method stub
		return "login";
		
	}
	
	@GetMapping("/myday")
	public String myday() {
		// TODO Auto-generated method stub
		return "myday";
		
	}
	
	@GetMapping("/important")
	public String important() {
		// TODO Auto-generated method stub
		return "important";
		
	}
	
	@GetMapping("tasks")
	public String tasks() {
		// TODO Auto-generated method stub
		return "tasks";
		
	}
	
	@GetMapping("/groups")
	public String groups() {
		// TODO Auto-generated method stub
		return "groups";
		
	}
	
	@GetMapping("/calendar")
	public String calendar() {
		// TODO Auto-generated method stub
		return "calendar";
		
	}
	
	@GetMapping("addtask")
	public String addtask() {
		// TODO Auto-generated method stub
		return "addtask";
		
	}
	
	@GetMapping("/myprofile")
	public String myprofile() {
		// TODO Auto-generated method stub
		return "myprofile";
		
	}
	
	@GetMapping("/editprofile")
	public String editprofile() {
		// TODO Auto-generated method stub
		return "editprofile";
		
	}

	@GetMapping("/stickynotes")
	public String stickynotes() {
		// TODO Auto-generated method stub
		return "stickynotes";
		
	}

}
