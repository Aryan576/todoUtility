package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.dto.Passworddto;
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
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@PostMapping("updatepassword")
	public String updatePassword(@SessionAttribute("user") UserEntity user, HttpSession session, Model model,
			Passworddto pass) {

		String confirmpassword = pass.getNewpassword();
		String newpassword = pass.getConfirmpassword();

		if (newpassword.equals(confirmpassword)) {
			UserEntity userEt = userrepositry.getById(user.getUserid());
			userEt.setPassword(newpassword);

			userrepositry.save(userEt);
			model.addAttribute("Password Updated Sucessfully ", "Newpass");
			return "redirect:/myprofile";

		} else {

			model.addAttribute("New Password and Confrim password Does not Match", "passowrdProblem");
			return "redirect:/myprofile";

		}

	}

}
