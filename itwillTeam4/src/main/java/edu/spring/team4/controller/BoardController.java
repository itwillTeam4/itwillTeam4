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

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired private BoardService boardService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main(Model model) {
		log.info("main() 호출");
		
		List<Board> list = boardService.select();
		model.addAttribute("boardList", list); // jsp에서 el로 사용할 수 있음.
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert() {
		log.info("insert() 호출");
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(Board board) {
		boardService.insert(board);
		
		return "redirect:/board/main";
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
