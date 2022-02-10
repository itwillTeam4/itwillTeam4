package edu.spring.team4.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.team4.domain.Board;

@Repository
public class BoardDaoImpl implements BoardDao {
	private static final Logger log = LoggerFactory.getLogger(BoardDaoImpl.class);
	private static final String BOARD_NAMESPACE = "edu.spring.team4.mapper.BoardMapper";

	@Autowired private SqlSession sqlSession;
	
	@Override
	public List<Board> read() {
		log.info("boardDaoImpl.read() 호출");
		
		return sqlSession.selectList(BOARD_NAMESPACE + ".selectAll");
	}
	
//	@Override
//	public Board read(int bno) {
//		log.info("boardDaoImpl.read(bno={}) 호출", bno);
//		return sqlSession.selectOne(BOARD_NAMESPACE + , parameter);
//	}

}
