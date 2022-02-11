package edu.spring.team4.service;

import java.util.List;

import edu.spring.team4.domain.Reply;

public interface ReplyService {

	List<Reply> select(int bno);
}
