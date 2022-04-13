package com.purplecoffe.map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/map")
@Controller
public class MapController {

	@RequestMapping("/map_find_view")
	public String mapFindView() {
		return "map/map_find";
	}
}
