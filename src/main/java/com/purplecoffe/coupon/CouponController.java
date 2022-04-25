package com.purplecoffe.coupon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/coupon")
@Controller
public class CouponController {

	// 사용자, 쿠폰이름 보내기
	@RequestMapping("/coupon_view")
	public String couponView() {
		return "coupon/coupon";
	}
	
	// 쿠폰이름, 번호, 시작일, 종료일 보내기
	@RequestMapping("/coupon_detail_view")
	public String couponDetailView() {
		return "coupon/coupon_detail";
	}
}
