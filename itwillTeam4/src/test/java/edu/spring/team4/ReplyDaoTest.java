package edu.spring.team4;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import edu.spring.team4.domain.Reply;
import edu.spring.team4.persistence.ReplyDao;
import edu.spring.team4.utils.MethodDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
@WebAppConfiguration
public class ReplyDaoTest {

	private static final Logger log = LoggerFactory.getLogger(ReplyDaoTest.class);

	@Autowired
	private ReplyDao replyDao;
	@Autowired
	private MethodDao methodDao;

	@Test
	public void doTest() {
		log.info("replyDao:{}", replyDao);

//		Reply reply = new Reply(0, "test 태스트", "admin", null, "", 0, 5);
//		int result = replyDao.create(reply);
//		log.info("insert result: {}", result);

//		List<Reply> list = replyDao.read(4);
//		for (Reply r : list) {
//			log.info("read result: {}", r);
//		}
//		List<Reply> listLike = replyDao.readLike(4);
//		for (Reply r : listLike) {
//			log.info("readLike result: {}", r);
//		}
//		Reply replyUpdate = new Reply(21, "test 태스트 수정", "admin 여긴 수정되면 안될듯?", null, "", 0, 5);
//		int result = replyDao.update(replyUpdate);
//		log.info("update result:{}", result);

		List<String> list = new ArrayList<>();
		list.add("태그1");
		list.add("태그2");
		log.info("list:{}", list);
		methodDao.removeList(list, "태그1");
		log.info("list:{}", list);
		System.out.println(methodDao.addList(list, "태그1"));
		System.out.println(methodDao.addList(list, "태그1"));
		System.out.println(methodDao.addList(list, "태그3"));
		log.info("list:{}", list);
		Map<String, Integer> map = new HashMap<>();
		map.put("태그1", 10);
		map.put("태그2", 10);
		methodDao.addMap(map, list);
		log.info("map:{}", map);
		methodDao.removeMap(map, list);
		log.info("map:{}", map);
	}
}