package com.purplecoffe.beans;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/beans")
@Controller
public class BeansController {

	@RequestMapping("/introduce_view")
	public String beansIntroduceView() {
		return "beans/bean_introduce";
	}
}
