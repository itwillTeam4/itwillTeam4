package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Meet;

public interface MeetDao {
	
	List<Meet> read();
	List<Meet> selectByHost(int host, int meet_idx);
	List<Meet> selectByMemberCode(String userCode);
	
	 
	 
	Meet read (int meet_idx);
	int create(Meet meet);
	int update(Meet meet);
	int delete(int meet_idx);
	List<Meet> read(int type, String keyword);
	List<Meet> selectThree();
	int updateLike(int meet_idx, String joiner);
}
