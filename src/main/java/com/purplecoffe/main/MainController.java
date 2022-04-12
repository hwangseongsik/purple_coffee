package com.purplecoffe.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/main")
@Controller
public class MainController {

	@RequestMapping("/main_view")
	public String mainView() {
		return "template/after_layout";
	}
}
