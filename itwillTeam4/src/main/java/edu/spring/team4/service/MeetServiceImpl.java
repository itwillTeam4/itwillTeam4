package edu.spring.team4.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.team4.domain.Meet;
import edu.spring.team4.persistence.MeetDao;
import edu.spring.team4.persistence.UserDao;

@Service
public class MeetServiceImpl implements MeetService {
	private static final Logger log = LoggerFactory.getLogger(MeetServiceImpl.class);
	
	
	@Autowired private MeetDao meetDao;
	@Autowired private UserDao userDao;
	

	@Override
	public List<Meet> select() {
		log.info("select() 호출");
		
		
		return meetDao.read();
	}

	@Override
	public int insert(Meet meet) {
		log.info("insert({}) 호출", meet);
		
		int result = meetDao.create(meet);
		
		return result;
		
	}
	
	@Override
	public Meet select(int meet_idx) {
		log.info("select(meet_idx={}) 호출", meet_idx);
		
		Meet meet = meetDao.read(meet_idx);
		
		
		return meet;
	}
	
	@Override
	public int update(Meet meet) {
		log.info("update({}) 호출", meet);

		return meetDao.update(meet);
	}
	
	@Override
	public int delete(int meet_idx) {
		log.info("delete(meet_idx={}) 호출", meet_idx);
		
		return meetDao.delete(meet_idx);
	}
	
	
	@Override
	public List<Meet> select(int searchType, String searchKeyword) {
		log.info("select(searchType={}, searchType={})", searchType, searchKeyword);
		
		return meetDao.read(searchType, searchKeyword);
	}
}
