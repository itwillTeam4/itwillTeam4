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
	public User checkUser_Id(String user_id) {
		log.info("checkUser_Id(user_id={}) 호출", user_id);
		
		return mapper.selectByUserId(user_id);
	}
	
	@Override
	public User read(User user) {
		log.info("read({}) 호출", user);
		return mapper.selectByIdAndPwd(user);
	}
	
	@Override
	public int updatePoints(String user_id, int points) {
		log.info("updatePoints(user_id={}, points={}) 호출", user_id, points);
		
		Map<String, Object> params = new HashMap<>();
		params.put("user_id", user_id);
		params.put("points", points);
		
		return mapper.updateUserPoints(params);
	}
	
}