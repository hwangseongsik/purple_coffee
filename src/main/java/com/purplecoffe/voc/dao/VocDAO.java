package com.purplecoffe.voc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.purplecoffe.voc.model.Voc;

@Repository
public interface VocDAO {

	public List<Voc> selectVocListByUserId(
			@Param("userId") int userId, 
			@Param("direction") String direction, 
			@Param("standardId") Integer standardId, 
			@Param("limit") int limit);
	
	public int selectVocIdByUserIdAndSort(
			@Param("userId") int userId, 
			@Param("sort") String sort);
	
	public int insertVoc(
			@Param("userId") int userId, 
			@Param("subject") String subject, 
			@Param("content") String content);
	
	public Voc selectVocById(int vocId);
	
	public int deleteVoc(
			@Param("vocId") int vocId, 
			@Param("userId") int userId);
}
