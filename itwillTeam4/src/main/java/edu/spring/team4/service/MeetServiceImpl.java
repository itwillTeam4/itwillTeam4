package edu.spring.team4.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.team4.domain.Meet;
import edu.spring.team4.persistence.MeetDao;

@Service
public class MeetServiceImpl implements MeetService {
	private static final Logger log = LoggerFactory.getLogger(MeetServiceImpl.class);
	
	
	@Autowired private MeetDao meetDao;

	@Override
	public List<Meet> select() {
		log.info("select() ȣ��");
		
		
		return meetDao.read();
	}

	@Override
	public int insert(Meet meet) {
		log.info("insert({}) ȣ��", meet);
		
		int result = meetDao.create(meet);
		
		return result;
		
	}
	
	@Override
	public Meet select(int meet_idx) {
		log.info("select(meet_idx={}) ȣ��", meet_idx);
		
		Meet meet = meetDao.read(meet_idx);
		
		
		return meet;
	}
	
	@Override
	public int update(Meet meet) {
		log.info("update({}) ȣ��", meet);
		
		int result = meetDao.update(meet);
		
		return result;
	}
	
	@Override
	public int delete(int meet_idx) {
		log.info("delete(meet_idx={}) ȣ��", meet_idx);
		
		int result = meetDao.delete(meet_idx);
		
		return result;
	}
	
	@Override
	public List<Meet> select(int type, String keyword) {
		
		log.info("select(type={}, keyword={}) ȣ��", type, keyword);
		
		
		return meetDao.read(type,keyword);
	}
}
