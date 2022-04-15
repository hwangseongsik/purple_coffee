package com.purplecoffe.voc;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.purplecoffe.voc.bo.VocBO;
import com.purplecoffe.voc.model.Voc;

@RequestMapping("/voc")
@Controller
public class VocController {

	@Autowired
	private VocBO vocBO;
	
	@RequestMapping("/voc_list_view")
	public String vocListView(
			@RequestParam(value="prevId", required=false) Integer prevIdParam,
			@RequestParam(value="nextId", required=false) Integer nextIdParam,
			Model model, HttpSession session) {
		// 지금 로그인이 되었는지
		Integer userId = (Integer)session.getAttribute("userId");
		if (userId == null) { // 비로그인
			return "redirect:/user/sign_in_view";
		}
		
		List<Voc> vocList = vocBO.getVocListByUserId(userId, prevIdParam, nextIdParam);
		
		int prevId = 0;
		int nextId = 0;
		if (vocList.isEmpty() == false) { // postList가 없는 경우 에러 발생 방지
			prevId = vocList.get(0).getId();
			nextId = vocList.get(vocList.size() - 1).getId();
		
			// 마지막 페이지인지 검사 => nextId 0으로
			if (vocBO.isLastPage(userId, nextId)) {
				nextId = 0;
			}
			
			// 첫페이지인지 검사 => prevId 0으로
			if (vocBO.isFirstPage(userId, prevId)) {
				prevId = 0;
			}
		}
		
		model.addAttribute("prevId", prevId); // 리스트 중 가장 앞 id
		model.addAttribute("nextId", nextId); // 리스트 중 가장 뒷 id
		model.addAttribute("vocList", vocList);
		model.addAttribute("viewName", "voc/voc_list");
		
		return "voc/voc_list";
	}
	
	
	@RequestMapping("/voc_create_view")
	public String vocCreateView(Model model) {
		
		model.addAttribute("viewName", "voc/voc_create");
		
		return "voc/voc_create";
	}
	
	@RequestMapping("/voc_detail_view")
	public String vocDetailView(
			@RequestParam("vocId") int vocId,
			Model model) {
		Voc voc = vocBO.getVocById(vocId);
		model.addAttribute("voc", voc);
		
		model.addAttribute("viewName", "voc/voc_detail");
		return "voc/voc_detail";
	}
}
