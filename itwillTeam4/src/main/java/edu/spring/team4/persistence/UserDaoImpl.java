package edu.spring.team4.persistence;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.team4.domain.User;
import edu.spring.team4.mapper.UserMapper;

@Repository
public class UserDaoImpl implements UserDao {
	
	private static final Logger log = LoggerFactory.getLogger(UserDaoImpl.class);
	

	@Autowired private UserMapper mapper;
	
	@Override
	public int create(User user) {
		log.info("create({}) 호출", user);
		
		return mapper.insert(user);
	}
	
	@Override
	public User checkUserId(String userid) {
		log.info("checkUserId(userid={}) 호출", userid);
		
		return mapper.selectByUserId(userid);
	}
	
	@Override
	public User read(User user) {
		log.info("read({}) 호출", user);
		return mapper.selectByIdAndPwd(user);
	}
	
	@Override
	public int updatePoints(String userid, int points) {
		log.info("updatePoints(userid={}, points={}) 호출", userid, points);
		
		Map<String, Object> params = new HashMap<>();
		params.put("userid", userid);
		params.put("points", points);
		
		return mapper.updateUserPoints(params);
	}
	
}