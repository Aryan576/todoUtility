package com.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.entity.NotesEntity;
import com.entity.TaskEntity;
import com.entity.UserEntity;
import com.repositry.NotesRepositry;
import com.repositry.TaskRepositry;

@Controller
public class UserController {
	
	@Autowired
	TaskRepositry taskrepos;
	@Autowired
	NotesRepositry note;
	
	@GetMapping("/userhome")
	public String users(Model model,@SessionAttribute("user") UserEntity user) {
		// TODO Auto-generated method stub
		Date d=new Date();
		
		  LocalDate obj=LocalDate.now();
		
		 
		  
			 model.addAttribute("todayscount",taskrepos.countBystartDateAndUserid(obj,user.getUserid())); 
			 model.addAttribute("Important",taskrepos.countByImportantAndUserid(user.getUserid()));
			 model.addAttribute("UserTasks",taskrepos.countByUserid(user.getUserid()));
			 
			 List<TaskEntity> task=taskrepos.myDay(user.getUserid());
				System.out.println("Todays"+task);
				model.addAttribute("today",task);
		 
		return "userhome";
		
	}
	
	@GetMapping("/forgotpassword")
	public String forgotpassword() {
		// TODO Auto-generated method stub
		return "forgotpassword";
		
	}
	
	@GetMapping("/resetpassword")
	public String resetpassword() {
		// TODO Auto-generated method stub
		return "resetpassword";
		
	}
	
	@GetMapping("/userheader")
	public String userheader() {
		// TODO Auto-generated method stub
		return "userheader";
		
	}
	
	@GetMapping("/usersidebar")
	public String usersidebar() {
		// TODO Auto-generated method stub
		return "usersidebar";
		
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
	
	
	
	/*
	 * @GetMapping("/important") public String important() { // TODO Auto-generated
	 * method stub return "important";
	 * 
	 * }
	 */
	

	
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
	
	@GetMapping("/addtask")
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

	@GetMapping("/notes")
	public String notes( Model model,@SessionAttribute("user") UserEntity user) {
		// TODO Auto-generated method stub
		
		NotesEntity nt= note.findByUserid(user.getUserid());
		
		model.addAttribute("notes",nt.getNotes());
		
		return "notes";
		
	}
	
	@GetMapping("/usersettings")
	public String usersettings() {
		// TODO Auto-generated method stub
		return "usersettings";
		
	}
	
	@GetMapping("/changepassword")
	public String changepassword() {
		// TODO Auto-generated method stub
		return "changepassword";
		
	}
	
	@PostMapping("/addtask")
	public String addtasks() {
		// TODO Auto-generated method stub
		return "tasks";
		
	}
	
	
	

}
