package edu.spring.team4.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.ex02.domain.User;
import edu.spring.ex02.persistence.UserDao;

@Service 
public class UserServiceImpl implements UserService {
	
	private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);
	
	
	@Autowired private UserDao userDao;
		
	@Override
	public int registerNewUser(User user) {
		log.info("registerNewUser({}) 호출", user);
		
		return userDao.create(user);
	}

	@Override
	public boolean isValidId(String userid) {
		log.info("isValidId(userid={}) 호출", userid);
		
		User user = userDao.checkUserId(userid);
		if (user == null) { 
			return true;
		} else { 
			return false;
		}
	}
	
	@Override
	public User checkSignIn(User user) {
		log.info("checkSignIn({}) 호출", user);
		
		return userDao.read(user);
	}
	
}