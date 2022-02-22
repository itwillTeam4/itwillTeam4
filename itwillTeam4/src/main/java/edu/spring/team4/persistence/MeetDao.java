package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Meet;

public interface MeetDao {
	
	public List<Meet> read();
	Meet read (int meet_idx);
	int create(Meet meet);
	int update(Meet meet);
	int delete(int meet_idx);
	List<Meet> read(int type, String keyword);

}
