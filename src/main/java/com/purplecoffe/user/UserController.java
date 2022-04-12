package com.purplecoffe.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {
	
	/**
	 * 회원가입 화면
	 * @param model
	 * @return
	 */ 
	@RequestMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("viewName", "user/sign_up");
		return "user/sign_up";
	}
	
	/**
	 * 로그인 화면
	 * @param model
	 * @return
	 */
	@RequestMapping("/sign_in_view")
	public String singInView(Model model) {
		model.addAttribute("viewName", "user/sign_in");
		return "user/sign_in";
	}
	
	
}