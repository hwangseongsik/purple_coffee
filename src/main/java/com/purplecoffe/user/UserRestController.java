package com.purplecoffe.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.purplecoffe.common.EncryptUtils;
import com.purplecoffe.user.bo.UserBO;
import com.purplecoffe.user.model.User;

@RequestMapping("/user")
@RestController
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	/**
	 * 회원가입
	 * @param email
	 * @param password
	 * @param name
	 * @return
	 */
	@RequestMapping("/sign_up")
	public Map<String, Object> signUp(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("name") String name
			) {
		
		String encryptPassword = EncryptUtils.md5(password);
		int row = userBO.insertUser(email, encryptPassword, name);
		
		Map<String, Object> result = new HashMap<>();
		if (row == 1) {
			result.put("result", "success");
		} else {
			result.put("error", "입력 실패");
		}
		return result;
	}
	
	/**
	 * 로그인이메일 중복확인
	 * @param email
	 * @return
	 */
	@RequestMapping("/is_duplicated_email")
	public Map<String, Object> isDuplicatedId(
			@RequestParam("email") String email) {
		
		Map<String, Object> result = new HashMap<>();
		int existRowCount = userBO.existEmail(email);
		if (existRowCount > 0) { // 이미 이메일이 존재하면 true
			result.put("result", true);
		} else {
			result.put("result", false);
		}

		return result;
	}
	
	/**
	 * 로그인
	 * @param email
	 * @param password
	 * @param request
	 * @return
	 */
	@RequestMapping("/sign_in")
	public Map<String, Object> signIn(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			HttpServletRequest request) {
		
		String encryptPassword = EncryptUtils.md5(password);
		User user = userBO.getUserByEmailAndPassword(email, encryptPassword);
		
		Map<String, Object> result = new HashMap<>();
		if (user != null) {
			result.put("result", "success");
			// 세션에 저장(로그인 상태를 유지한다)
			HttpSession session = request.getSession();
			session.setAttribute("userEmail", user.getEmail());
			session.setAttribute("userName", user.getName());	
			session.setAttribute("userId", user.getId());
		} else {
			result.put("result", "error");
			result.put("error_message", "존재하지 않는 사용자입니다.");
		}
		return result;
	}
}
