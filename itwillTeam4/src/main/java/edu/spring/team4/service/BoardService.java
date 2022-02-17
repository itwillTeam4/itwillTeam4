package edu.spring.team4.service;

import java.util.List;

import edu.spring.team4.domain.Board;
import edu.spring.team4.utils.Paging;

public interface BoardService {
	
	List<Board> select();
	int insert(Board board);
	Board select(int bno);
	int update(Board board);
	int delete(int bno);
	List<Board> select(int searchType, String searchKeyword);

	int countBoard(int board_meet_idx);
	
	List<Board> selectPageBoard(Paging page,int board_meet_idx);
	
}
