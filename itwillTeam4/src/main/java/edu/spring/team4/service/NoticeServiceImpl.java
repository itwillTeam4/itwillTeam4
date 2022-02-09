package edu.spring.team4.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import edu.spring.team4.domain.Notice;
import edu.spring.team4.persistence.NoticeDao;

public class NoticeServiceImpl implements NoticeService {
	private static final Logger log = LoggerFactory.getLogger(NoticeServiceImpl.class);
	
	
	@Autowired private NoticeDao noticeDao;

	@Override
	public List<Notice> select() {
		log.info("select() 호출");
		
		
		return noticeDao.read();
	}

}
