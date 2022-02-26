package edu.spring.team4.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.team4.controller.UserSearchController;
import edu.spring.team4.mapper.UserMapper;
import edu.spring.team4.persistence.UserDao;

@Service
public class UserSearchService {
	
	private static final Logger log = LoggerFactory.getLogger(UserSearchService.class);


	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private UserDao userDao;
	@Autowired private UserMapper mapper;

	// 아이디 찾기
	public String get_searchId(String user_name, String user_phone) {

		mapper = sqlSession.getMapper(UserMapper.class);
		
		String result = "";

		try {
			result = userDao.searchId(user_name, user_phone);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
}
