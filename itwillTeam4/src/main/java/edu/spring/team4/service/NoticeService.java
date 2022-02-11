package edu.spring.team4.service;

import java.util.List;

import edu.spring.team4.domain.Notice;

public interface NoticeService {

	
	List<Notice> select();
	
	int insert(Notice notice);
	Notice select(int notice_idx);
	
	
	int update(Notice notice);
	
	int delete(int notice_idx);
	List<Notice> select(int type, String keyword);
}
