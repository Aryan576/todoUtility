package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.NotesEntity;
import com.repositry.NotesRepositry;

@Controller
public class NotesController {

	@Autowired
	NotesRepositry notes;
	@PostMapping("savenotes")
	public String saveNotes(NotesEntity note,Model model)
	{
		notes.save(note);
		
		model.addAttribute("notes",note);
		
		return "redirect:/notes";
	}
	
	
}
