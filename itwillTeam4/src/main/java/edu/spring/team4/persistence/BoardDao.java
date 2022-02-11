package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Board;

public interface BoardDao {
	
	public List<Board> read();
	Board read (int bno);
	int create(Board board);
	int update(Board board);
	int updateViewCnt(int bno);
	int delete(int bno);
	List<Board> read(int type, String keyword);
	

}
