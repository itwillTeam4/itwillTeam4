package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Notice;

public interface NoticeDao {

	List<Notice> read();
	
//	Notice read(int notice_idx);
//	int create(Notice notice);
//	int update(Notice notice);
//	int updateViewCnt(int notice_idx);
//	int delete(int notice_idx);
//	List<Notice> read(int type, String keyword);
	
	
}
