package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.TaskEntity;
import com.repositry.TaskRepositry;

@Controller
public class TaskController {
	
	@Autowired
	TaskRepositry taskrepos;
	
	@PostMapping("addtask")
	public String addTask(TaskEntity task) {
		
		
		System.out.println(task.getTaskname());
		taskrepos.save(task);
		
		
		return "redirect:/tasks";
		
	}

}
