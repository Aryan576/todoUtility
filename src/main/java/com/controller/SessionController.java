package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dto.Userdto;
import com.entity.UserEntity;
import com.repositry.UserRepositry;

@Controller
public class SessionController {

	@Autowired
	UserRepositry userrepositry;

	@PostMapping("saveuser")
	public String saveuser(UserEntity user) {

		userrepositry.save(user);
		return "redirect:/";
	}

	@PostMapping("authenticate")
	public String authenticate(Userdto userdto, HttpSession session) {

		UserEntity userEntity = userrepositry.findByEmailAndPassword(userdto.getEmail(), userdto.getPassword());

		System.out.println(userEntity);
		if (userEntity != null) {
			
			session.setAttribute("user", userEntity);

			return "redirect:/userhome";

		}

		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return"redirect:/";
	}
}
