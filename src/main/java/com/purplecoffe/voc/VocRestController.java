package com.purplecoffe.voc;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.purplecoffe.voc.bo.VocBO;

@RequestMapping("/voc")
@RestController
public class VocRestController {

	@Autowired
	private VocBO vocBO;
	
	@PostMapping("/create")
	public Map<String, Object> create(
			@RequestParam("subject") String subject,
			@RequestParam("content") String content,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (int) session.getAttribute("userId");
		String userEmail = (String) session.getAttribute("userEmail");
		
		// BO
		int row = vocBO.addVoc(userEmail, userId, subject, content);
		
		Map<String, Object> result = new HashMap<>();
		result.put("result", "success");
		if (row < 1) {
			result.put("result", "error");
			result.put("error_message", "메모 저장에 실패했습니다. 다시 시도해주세요.");
		}
		
		return result;
	}
}
