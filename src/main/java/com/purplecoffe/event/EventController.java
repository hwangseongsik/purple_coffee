package com.purplecoffe.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/event")
@Controller
public class EventController {

	// 사진은 메뉴image
	// jsp 반복문돌리기. name, state, startdate, endDate
	@RequestMapping("/event_view")
	public String eventView() {
		return "event/event";
	}
	
	@RequestMapping("/evnet_detail_view")
	public String eventDetailView() {
		return "event/event_detail";
	}
}
