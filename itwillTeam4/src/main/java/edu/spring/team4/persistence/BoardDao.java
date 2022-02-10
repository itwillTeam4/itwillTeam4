package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Board;

public interface BoardDao {
	
	public List<Board> read();
	Board read (int bno);
	

}
