package edu.spring.team4;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import edu.spring.team4.domain.Board;
import edu.spring.team4.domain.User;
import edu.spring.team4.persistence.BoardDao;
import edu.spring.team4.persistence.UserDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" }
		)
@WebAppConfiguration
public class BoardDaoTest {

	private static final Logger logger= LoggerFactory.getLogger(BoardDaoTest.class);
	
	@Autowired private BoardDao boardDao;
	@Autowired private UserDao userDao;
	
	@Test
	public void doTest() {
		logger.info("boardDao:{}",boardDao);
//		List<Board> list = boardDao.read();
//		logger.info("list size = {}", list.size());
		
//		Board board = boardDao.read(1);
//		logger.info(board.toString());
		
//		Board board = new Board(0,"MyBatis-Spring Test","마이바티스 스프링 테스트","admin",null,0,0,null);
//		int result = boardDao.create(board);
//		logger.info("INSERT 결과:{}",result);
		
//		Board board = new Board(2,"수정 성공?","MyBatis를 사용한 SQL UPDATE...",null,null,0,0,null);
//		int result = boardDao.update(board);
//		logger.info("UPDATE 결과:{}",result);
		
//		int result = boardDao.updateViewCnt(2);
//		logger.info("updateViewCnt 결과 : {}", result);
		
//		int result = boardDao.delete(2);
//		logger.info("delete 결과 : ({}) 호출", result);
		
//			List<Board> list = boardDao.read(3, "TEST");
//			logger.info("키워드 검색 결과: {}개 행", list.size());
		
		User user = new User("oh_ssam","0000","oh_ssam@itwill.co.kr",0);
		int result = userDao.create(user);
		logger.info("create user 결과: {}", result);
		}
	
}
