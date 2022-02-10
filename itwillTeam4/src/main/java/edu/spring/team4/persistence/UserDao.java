package edu.spring.team4.persistence;

import edu.spring.team4.domain.User;

public interface UserDao {
	
	int create(User user);
	User checkUser_Id(String user_id);
	User read(User user);
	int updatePoints(String user_id, int points);
	
}