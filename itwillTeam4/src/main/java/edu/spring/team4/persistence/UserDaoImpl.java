package edu.spring.team4.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.team4.domain.User;
import edu.spring.team4.mapper.UserMapper;

@Repository
public class UserDaoImpl implements UserDao {
	
	private static final Logger log = LoggerFactory.getLogger(UserDaoImpl.class);
	private static final String USER_NAMESPACE = "edu.spring.team4.mapper.UserMapper";

	@Autowired private UserMapper mapper;
	@Autowired private SqlSession sqlSession;
	
	@Override
	public int create(User user) {
		log.info("create({}) 호출", user);
		return mapper.insert(user);
	}
	
	@Override
	public User checkUserId(String user_id) {
		log.info("checkUserId(user_id={}) 호출", user_id);
		
		return mapper.selectByUserId(user_id);
	}
	
	@Override
	public User checkUserNn(String user_nn) {
		log.info("checkUserNn(user_nn={}) 호출", user_nn);
		return mapper.selectByUserNn(user_nn);
	}
	
	@Override
	public User read(User user) {
		log.info("read({}) 호출", user);
		return mapper.selectByIdAndPwd(user);
	}

	@Override
	public User read(int user_code) {
		return mapper.selectByUserCode(user_code);
	}
	
	@Override
	public int update(User user) {
		return sqlSession.update(USER_NAMESPACE + ".update", user);
	}
	
	@Override
	public int delete(int user_code) {
		log.info("delete 호출");
		return sqlSession.delete(USER_NAMESPACE + ".delete", user_code);
	}
	
}