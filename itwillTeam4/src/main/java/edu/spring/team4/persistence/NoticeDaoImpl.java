package edu.spring.team4.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import edu.spring.team4.domain.Notice;

public class NoticeDaoImpl implements NoticeDao{
	
	private static final Logger log = LoggerFactory.getLogger(NoticeDaoImpl.class);
	private static final String NOTICE_NAMESPACE = "edu.spring.team4.mapper.NoticeMapper";
	
	
	@Autowired private SqlSession sqlSession;
	
	@Override
	public List<Notice> read() {
		
		log.info("NoticeDaoImpl.read() 호출");
		
		return sqlSession.selectList(NOTICE_NAMESPACE+".selectAllNotice");
	}
	
	//TODO:read 부터 쭉

}
