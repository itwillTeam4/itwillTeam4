package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Notice;

public interface NoticeDao {

	List<Notice> read();
	

	int create(Notice notice);
	Notice read(int notice_idx);
	int update(Notice notice);
	int delete(int notice_idx);
//	List<Notice> read(int type, String keyword);
	
	
}
