package edu.spring.team4.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.team4.domain.Meet;

@Repository
public class MeetDaoImpl implements MeetDao {
	private static final Logger log = LoggerFactory.getLogger(MeetDaoImpl.class);
	private static final String MEET_NAMESPACE = "edu.spring.team4.mapper.MeetMapper";

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Meet> read() {
		log.info("meetDaoImpl.read() 호출");
		return sqlSession.selectList(MEET_NAMESPACE + ".selectAll");
	}

	@Override
	public Meet read(int meet_idx) {
		log.info("meetDaoImpl.read(meet_idx={}) 호출", meet_idx);
		return sqlSession.selectOne(MEET_NAMESPACE + ".selectByMeet_idx", meet_idx);
	}

	@Override
	public int create(Meet meet) {
		log.info("MeetDaoImpl.create({}) 호출", meet);

		return sqlSession.insert(MEET_NAMESPACE + ".create", meet);
	}

	@Override
	public int update(Meet meet) {
		log.info("MeetDaoImpl.update({}) 호출", meet);
		return sqlSession.update(MEET_NAMESPACE + ".update", meet);
	}

	@Override
	public int delete(int meet_idx) {
		log.info("MeetDaoImpl.delete(meet_idx={}) 호출", meet_idx);
		return sqlSession.delete(MEET_NAMESPACE + ".delete", meet_idx);
	}

	@Override
	public List<Meet> read(int type, String keyword) {
		log.info("meetDaoImpl.read(type={}, keyword={})", type, keyword);

		Map<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("keyword", "%" + keyword.toLowerCase() + "%");

		return sqlSession.selectList(MEET_NAMESPACE + ".selectByKeyword", params);
	}
	
	@Override
	public List<Meet> selectThree() {
		log.info("MeetDaoImpl.selectThree() 호출");
		
		return sqlSession.selectList(MEET_NAMESPACE+".selectThree");
	}

}
