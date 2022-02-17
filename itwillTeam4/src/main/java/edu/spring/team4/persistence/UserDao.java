package edu.spring.team4.persistence;

import edu.spring.team4.domain.User;

public interface UserDao {
	
	int create(User user);
	User checkUserId(String user_id);
	User checkUserNn(String user_nn);
	User read(User user);
	User read(int user_code);
	int update(User user);
	int delete(int user_code);
	
}