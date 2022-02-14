package edu.spring.team4.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.team4.domain.Board;
import edu.spring.team4.persistence.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {
	private static final Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	// Service 계층은 Persistence(Repository) 계층의 객체를 사용.
	@Autowired private BoardDao boardDao;
	
	@Override
	public List<Board> select() {
		log.info("select() 호출");
		return boardDao.read();
	}

	@Override
	public int insert(Board board) {
		int result = boardDao.create(board);
		
		return result;
	}

	@Override
	public Board select(int bno) {
		return boardDao.read(bno);
	}

}
