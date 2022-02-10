package edu.spring.team4.persistence;

import edu.spring.tema4.domain.User;

public interface UserDao {
	
	int create(User user);
	User checkUserId(String userid);
	User read(User user);
	int updatePoints(String userid, int points);
	
}