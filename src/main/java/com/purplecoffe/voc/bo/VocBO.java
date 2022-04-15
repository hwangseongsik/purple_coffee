package com.purplecoffe.voc.bo;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purplecoffe.voc.dao.VocDAO;
import com.purplecoffe.voc.model.Voc;

@Service
public class VocBO {
	
	private static final int VOC_MAX_SIZE = 5;
	
	@Autowired
	private VocDAO vocDAO;
	
	public List<Voc> getVocListByUserId(int userId, Integer prevId, Integer nextId) {
		
		// 페이징
		String direction = null;
		Integer standardId = null;
		if (prevId != null) {
			
			// '이전'
			direction = "prev";
			standardId = prevId;
			
			List<Voc> vocList = vocDAO.selectVocListByUserId(userId, direction, standardId, VOC_MAX_SIZE);
			Collections.reverse(vocList);
			return vocList;
		} else if (nextId != null) {
			
			// '다음'
			direction = "next";
			standardId = nextId;
		}
		
		// 처음 왔을 때 
		return vocDAO.selectVocListByUserId(userId, direction, standardId, VOC_MAX_SIZE);
	}
	
	public boolean isLastPage(int userId, int nextId) {
		// 제일 작은 id 하나를 가져와서 nextId 비교하고 같으면 마지막 페이지이다.
		return nextId == vocDAO.selectVocIdByUserIdAndSort(userId, "ASC");
	}
	
	public boolean isFirstPage(int userId, int prevId) {
		// 제일 큰 id 하나를 가져와서 prevId 비교하고 같으면 첫번째 페이지이다.
		return prevId == vocDAO.selectVocIdByUserIdAndSort(userId, "DESC");
	}
	
	public Voc getVocById(int vocId) {
		return vocDAO.selectVocById(vocId);
	}
	
	public int addVoc(String userEmail, int userId, 
			String subject, String content) {
		
		return vocDAO.insertVoc(userId, subject, content);
	}
	
	
	public int deleteVoc(int vocId, int userId) {
		
		Voc voc = getVocById(vocId);
		if (voc == null) {
			return 0;
		}
		return vocDAO.deleteVoc(vocId, userId);
	}
	
}
