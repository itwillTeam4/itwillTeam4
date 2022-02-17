package edu.spring.team4.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.team4.domain.Board;
import edu.spring.team4.utils.Paging;

@Repository
public class BoardDaoImpl implements BoardDao {
	private static final Logger log = LoggerFactory.getLogger(BoardDaoImpl.class);
	private static final String BOARD_NAMESPACE = "edu.spring.team4.mapper.BoardMapper";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Board> read() {
		log.info("boardDaoImpl.read() 호출");

		return sqlSession.selectList(BOARD_NAMESPACE + ".selectAll");
	}

	@Override
	public Board read(int bno) {
		log.info("boardDaoImpl.read(bno={}) 호출", bno);
		return sqlSession.selectOne(BOARD_NAMESPACE + ".selectByBno", bno);
	}

	@Override
	public int create(Board board) {
		log.info("boardDaoImpl.create({}) 호출", board);

		return sqlSession.insert(BOARD_NAMESPACE + ".create", board);
	}

	@Override
	public int update(Board board) {
		log.info("boardDaoImpl.update({}) 호출", board);
		return sqlSession.update(BOARD_NAMESPACE + ".update", board);
	}

	@Override
	public int updateViewCnt(int bno) {
		log.info("boardDaoImpl.updateViewCnt(bno={}) 호출", bno);
		return sqlSession.update(BOARD_NAMESPACE + ".updateViewCnt", bno);
	}

	@Override
	public int delete(int bno) {
		log.info("boardDaoImpl.delete(bno={}) 호출", bno);
		return sqlSession.delete(BOARD_NAMESPACE + ".delete", bno);
	}

	@Override
	public List<Board> read(int type, String keyword) {
		log.info("boardDaoImpl.read(type={}, keyword={})", type, keyword);

		Map<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("keyword", "%" + keyword.toLowerCase() + "%");

		return sqlSession.selectList(BOARD_NAMESPACE + ".selectByKeyword", params);
	}

	@Override
	public int updateReplyCnt(int bno, int increase) {
		log.info("updateReplyCnt(bno={}, increase={}) 호출", bno, increase);

		Map<String, Object> params = new HashMap<>();
		params.put("bno", bno);
		params.put("increase", increase);

		return sqlSession.update(BOARD_NAMESPACE + ".updateReplyCnt", params);

	}

	@Override
	public int countBoard(int board_meet_idx) {
		Map<String, Object> params = new HashMap<>();
		params.put("board_meet_idx",board_meet_idx);
		return sqlSession.selectOne(BOARD_NAMESPACE+".countBoard",params);
	}

	@Override
	public List<Board> selectPageBoard(Paging page, int board_meet_idx, int orderby) {
		Map<String, Object> params = new HashMap<>();
		params.put("board_meet_idx",board_meet_idx);
		params.put("start",page.getStart());
		params.put("end",page.getEnd());
		List<Board> result=null;
		if(orderby==1) {
			log.info("여기는 dao 조회수");
			result= sqlSession.selectList(BOARD_NAMESPACE+".selectPageBoardView",params);
		}else if(orderby==2) {
			log.info("여기는 dao 댓글");
			result= sqlSession.selectList(BOARD_NAMESPACE+".selectPageBoardReply",params);
		}else {
			log.info("여기는 dao 최신");
			result= sqlSession.selectList(BOARD_NAMESPACE+".selectPageBoardBno",params);
		}
		return result;
	}

}
