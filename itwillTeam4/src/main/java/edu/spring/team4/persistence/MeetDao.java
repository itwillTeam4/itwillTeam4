package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Meet;

public interface MeetDao {
	
	public List<Meet> read();
	Meet read (int bno);
	int create(Meet meet);
	int update(Meet meet);
	int delete(int bno);
	List<Meet> read(int type, String keyword);

}
