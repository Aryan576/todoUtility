package com.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.SessionAttribute;

import com.entity.TaskEntity;
import com.entity.UserEntity;

import com.repositry.TaskRepositry;

@Controller

public class TaskController {

	@Autowired
	TaskRepositry taskrepos;

	@PostMapping("addTasks")
	public String addTasks(TaskEntity taskEntity) {
		System.out.println("addTasks()");

		taskrepos.save(taskEntity);

		return "redirect:/tasks";

	}

	@GetMapping("/tasks")
	public String tasks(Model model, @SessionAttribute("user") UserEntity user, HttpServletRequest req) { // TODO

		System.out.println(user.getUserid());

		List<TaskEntity> task = taskrepos.findByuserid(user.getUserid());

		System.out.println(task);

		model.addAttribute("usertask", task);
		return "tasks";

	}

	@GetMapping("updatetask/{taskid}")
	public String GetTask(@PathVariable("taskid") Long taskid, Model model) {
		TaskEntity task = taskrepos.getById(taskid);
		model.addAttribute("task", task);
		return "edittask";
	}

	@PostMapping("editTasks")
	public String UpdatedTasks(TaskEntity tasks) {
		TaskEntity utask = taskrepos.getById(tasks.getTaskid());

		utask.setTaskname(tasks.getTaskname());
		utask.setDescription(tasks.getDescription());
		utask.setStartDate(tasks.getStartDate());
		utask.setEndDate(tasks.getEndDate());
		utask.setTasktime(tasks.getTasktime());
		utask.setUserid(tasks.getUserid());

		taskrepos.save(utask);

		return "redirect:/tasks";
	}

	@GetMapping("imptask/{taskid}")
	public String imptask(TaskEntity tasks, @PathVariable("taskid") Long taskid) {
		TaskEntity utask = taskrepos.findByTaskid(taskid);
		utask.setImportant(1);
		
		taskrepos.save(utask);

		return "redirect:/tasks";
	}
	@GetMapping("important")
	public String ImpTasks(Model model, @SessionAttribute("user") UserEntity user)
	{
		System.out.println(user.getUserid()+"tasks");
		List<TaskEntity> utasks=taskrepos.findByUseridAndImportant(user.getUserid(), 1);
		System.out.println(utasks);
		model.addAttribute("utasks",utasks);
		
		return "important";
	}
	
	@GetMapping("unimportant/{taskid}")
	public String unimportnatTasks(TaskEntity tasks,@PathVariable("taskid") Long taskid)
	{
		
		TaskEntity utask = taskrepos.findByTaskid(taskid);
		utask.setImportant(0);
		
		taskrepos.save(utask);

		return "redirect:/important";
	}

	@GetMapping("sessionOver")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("deletetask")
	public String deleteTask(TaskEntity task, Model model) {
		model.addAttribute("taskid", task.getTaskid());
		return "redirect:/tasks";
	}

	@GetMapping("deletedtasks/{taskid}")
	public String deleteTasks(@PathVariable("taskid") Long taskid) {
		taskrepos.deleteById(taskid);
		return "redirect:/tasks";
	}
	
	

}
