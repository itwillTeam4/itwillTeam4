package edu.spring.team4.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.team4.domain.Reply;
import edu.spring.team4.service.ReplyService;

@RestController
@RequestMapping(value = "/replies")
public class ReplyController {
	@Autowired
	private ReplyService replyService;

	private static final Logger log = LoggerFactory.getLogger(ReplyController.class);

	@RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	public ResponseEntity<List<Reply>> readallReplies(@PathVariable(name = "bno") Integer bno) {
		log.info("readAllReplies(bno={})", bno);

		List<Reply> replyList = replyService.select(bno);

		ResponseEntity<List<Reply>> entity = new ResponseEntity<List<Reply>>(replyList, HttpStatus.OK);
		return entity;
	}
}