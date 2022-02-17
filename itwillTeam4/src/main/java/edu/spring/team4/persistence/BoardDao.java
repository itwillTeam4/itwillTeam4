package edu.spring.team4.persistence;

import java.util.List;

import edu.spring.team4.domain.Board;
import edu.spring.team4.utils.Paging;

public interface BoardDao {
	
	public List<Board> read();
	Board read (int bno);
	int create(Board board);
	int update(Board board);
	int updateViewCnt(int bno);
	int delete(int bno);
	List<Board> read(int type, String keyword);
	int updateReplyCnt(int bno, int increase);

	int countBoard(int board_meet_idx);
	
	List<Board> selectPageBoard(Paging page,int board_meet_idx,int orderby);
	
}
