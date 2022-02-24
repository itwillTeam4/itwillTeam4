package edu.spring.team4.service;

import java.util.List;

import edu.spring.team4.domain.Meet;

public interface MeetService {
	
	List<Meet> select();
	List<Meet> selectByHost(int host);
	List<Meet> selectByMemberCode(String userCode);
	
	int insert(Meet meet);
	Meet select(int meet_idx);
	int update(Meet meet);
	int delete(int meet_idx);
	
	List<Meet> select(int searchType, String searchKeyword);
	List<Meet> selectThree();
	int updateLike(int meet_idx, String joiner);

}
