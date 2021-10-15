package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AdminController {
	
	@GetMapping("/adminhome")
	public String users() {
		// TODO Auto-generated method stub
		return "adminhome";
		
	}
	
	@GetMapping("/todayusers")
	public String todayusers() {
		// TODO Auto-generated method stub
		return "todayusers";
		
	}
	
	@GetMapping("/activeusers")
	public String activeusers() {
		// TODO Auto-generated method stub
		return "activeusers";
		
	}
	
	@GetMapping("/adminusers")
	public String adminusers() {
		// TODO Auto-generated method stub
		return "adminusers";
		
	}
	
	
	@GetMapping("/admincalendar")
	public String admincalendar() {
		// TODO Auto-generated method stub
		return "admincalendar";
		
	}
	
	@GetMapping("/adminnotes")
	public String adminnotes() {
		// TODO Auto-generated method stub
		return "adminnotes";
		
	}

}
