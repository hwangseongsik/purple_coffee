package com.purplecoffe.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.purplecoffe.user.model.User;

@Repository
public interface UserDAO {

	public int existEmail(String email);

	public User selectUserByEmailAndPassword(
			@Param("email") String email,
			@Param("password") String password);

	public int insertUser(
			@Param("email") String email, 
			@Param("password") String password, 
			@Param("name") String name);

}
