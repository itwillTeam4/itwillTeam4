package edu.spring.team4.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.spring.team4.domain.Meet;
import edu.spring.team4.service.MeetService;

@Controller
@RequestMapping(value = "/meet")
public class MeetController {
	private static final Logger log = LoggerFactory.getLogger(MeetController.class);

	@Autowired
	private MeetService meetService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main(Model model) {
		log.info("main() ȣ��");

		List<Meet> meetlist = meetService.select();
		model.addAttribute("meetList", meetlist);
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert() {
		log.info("insert() ȣ��");
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(Meet meet) {
		meetService.insert(meet);

		return "redirect:/board?act=rlt";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(int meet_idx, Model model) {
		Meet meet = meetService.select(meet_idx);
		List<Meet> meetlist = meetService.selectByHost(meet.getMeet_host(),meet.getMeet_idx());
		model.addAttribute("meet", meet);
		model.addAttribute("meetlist", meetlist);
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void update(int meet_idx, Model model) {
		Meet meet = meetService.select(meet_idx);
		model.addAttribute("meet", meet);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Meet meet) {
		meetService.update(meet);
		return "redirect:/meet/main";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int meet_idx) {
		meetService.delete(meet_idx);
		return "redirect:/meet/main";
	}
	
	@RequestMapping(value = "/updateLike/{meet_idx}", method = RequestMethod.GET)
	public String updateLike(@PathVariable(name = "meet_idx") Integer meet_idx,
			@RequestParam(value = "joiner", required = false) String joiner) {
		log.info("meet_idx={},joiner={}",meet_idx,joiner);
		meetService.updateLike(meet_idx, joiner);
		return "redirect:/meet/detail?meet_idx={meet_idx}";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@RequestParam(value = "type", required = true) int type,
			@RequestParam(value = "keyword", required = true) String keyword, Model model) {
		List<Meet> list = meetService.select(type, keyword);
		model.addAttribute("meetList", list);
		return "/meet/main";
	}
	
	
}