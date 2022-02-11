package edu.spring.team4.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.team4.domain.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	private static final Logger log = LoggerFactory.getLogger(NoticeDaoImpl.class);
	private static final String NOTICE_NAMESPACE = "edu.spring.team4.mapper.NoticeMapper";
	
	
	@Autowired private SqlSession sqlSession;
	
	@Override
	public List<Notice> read() {
		
		log.info("NoticeDaoImpl.read() 호출");
		return sqlSession.selectList(NOTICE_NAMESPACE+".selectAllNotice");
	
	}
	
	
	@Override
	public int create(Notice notice) {
		log.info("NoticeDaoImpl.create() 호출");
		
		
		return sqlSession.insert(NOTICE_NAMESPACE +".create", notice);
	}

	@Override
	public Notice read(int notice_idx) {
		
		log.info("NoticeDaoImpl.read(notice_idx={}) 호출",notice_idx);
		
		return sqlSession.selectOne(NOTICE_NAMESPACE+".selectOne",notice_idx);
	}
	
	@Override
	public int update(Notice notice) {
		
		log.info("NoticeDaoImpl.update({}) 호출", notice);
		
		
		return sqlSession.update(NOTICE_NAMESPACE+".update",notice);
	}
	
	@Override
	public int delete(int notice_idx) {
		
		log.info("NoticeDaoImpl.delete(notice_idx={}) 호출", notice_idx);
		
		return sqlSession.delete(NOTICE_NAMESPACE+".delete",notice_idx);
	}
}
