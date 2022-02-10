package edu.spring.team4.service;

import edu.spring.team4.domain.User;

public interface UserService {
	
	int registerNewUser(User user);
	boolean isValidId(String user_id);
	User checkSignIn(User user);

}