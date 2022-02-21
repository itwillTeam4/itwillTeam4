package edu.spring.team4.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.spring.team4.domain.Board;
import edu.spring.team4.service.BoardService;
import edu.spring.team4.utils.Paging;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String main(Model model, Paging page, @RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value = "order", required = false) String order,
			@RequestParam(value = "act", required = false) String act,
			@RequestParam(value = "MeetIdx", required = false) String user_meet_idx) {
		log.info("free() 호출");
		String result;
		if (user_meet_idx == null) {
			user_meet_idx = "0  1 2 있다 없다";
		}

		if (act == null) {
			act = "free";
		}
		if (act.equals("my")) {
			log.info("나의");
			result = "board/mymeet";
		} else if (act.equals("rlt")) {
			log.info("실시간");
			user_meet_idx = "없다 있다 0";
			result = "board/realtime";
		} else {
			log.info("자유");
			result = "board/free";
		}

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		int orderby = 0;
		if (order == null) {
			orderby = 0;
		} else {
			orderby = Integer.parseInt(order);
		}

		int total = boardService.countBoard(user_meet_idx);
		page = new Paging(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<Board> list = boardService.selectPageBoard(page, user_meet_idx, orderby);
		model.addAttribute("paging", page);
		model.addAttribute("boardList", list); // jsp에서 el로 사용할 수 있음.
		model.addAttribute("act", act); // jsp에서 el로 사용할 수 있음.
		model.addAttribute("order", order); // jsp에서 el로 사용할 수 있음.
		model.addAttribute("userMeetIdx", user_meet_idx); // jsp에서 el로 사용할 수 있음.

		return result;
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert() {
		log.info("insert() 호출");
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(Board board) {
		boardService.insert(board);

		return "redirect:/board";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(int bno, Model model) {
		Board board = boardService.select(bno);
		model.addAttribute("board", board);
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void update(int bno, Model model) {
		Board board = boardService.select(bno);
		model.addAttribute("board", board);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Board board) {
		boardService.update(board);
		return "redirect:/board/main";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int bno) {
		boardService.delete(bno);
		return "redirect:/board/main";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(int type, String keyword, Model model) {
		List<Board> list = boardService.select(type, keyword);
		model.addAttribute("boardList", list);
		return "/board/main";
	}
}
