package com.purplecoffe.brand;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/brand")
@Controller
public class BrandController {

	@RequestMapping("/introduce_view")
	public String brandIntroduceView() {
		return "brand/brand_view";
	}
}
